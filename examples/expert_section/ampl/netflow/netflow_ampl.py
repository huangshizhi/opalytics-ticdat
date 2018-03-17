#
# Solve a multi-commodity flow problem as python package.
#
# Implement core functionality needed to achieve modularity.
# 1. Define the input data schema
# 2. Define the output data schema
# 3. Create a solve function that accepts a data set consistent with the input
#    schema and (if possible) returns a data set consistent with the output schema.
#
# Provides command line interface via ticdat.standard_main
# For example, typing
#   python netflow.py -i netflow_sample_data.sql -o netflow_solution.sql
# will read from the model stored in netflow_sample_data.sql
# and write the solution to netflow_solution.sql

from ticdat import TicDatFactory, standard_main
import amplpy
import pandas as pd

# ------------------------ define the input schema --------------------------------
input_schema = TicDatFactory (
     commodities = [["Name"],[]],
     nodes  = [["Name"],[]],
     arcs = [["Source", "Destination"],["Capacity"]],
     cost = [["Commodity", "Source", "Destination"], ["Cost"]],
     inflow = [["Commodity", "Node"],["Quantity"]]
)

# Define the foreign key relationships
input_schema.add_foreign_key("arcs", "nodes", ['Source', 'Name'])
input_schema.add_foreign_key("arcs", "nodes", ['Destination', 'Name'])
input_schema.add_foreign_key("cost", "nodes", ['Source', 'Name'])
input_schema.add_foreign_key("cost", "nodes", ['Destination', 'Name'])
input_schema.add_foreign_key("cost", "commodities", ['Commodity', 'Name'])
input_schema.add_foreign_key("inflow", "commodities", ['Commodity', 'Name'])
input_schema.add_foreign_key("inflow", "nodes", ['Node', 'Name'])

# Define the data types
input_schema.set_data_type("arcs", "Capacity", min=0, max=float("inf"),
                           inclusive_min=True, inclusive_max=True)
input_schema.set_data_type("cost", "Cost", min=0, max=float("inf"),
                           inclusive_min=True, inclusive_max=False)
input_schema.set_data_type("inflow", "Quantity", min=-float("inf"), max=float("inf"),
                           inclusive_min=False, inclusive_max=False)

# The default-default of zero makes sense everywhere except for Capacity
input_schema.set_default_value("arcs", "Capacity", float("inf"))
# ---------------------------------------------------------------------------------

# ------------------------ define the output schema -------------------------------
solution_schema = TicDatFactory(
        flow = [["Commodity", "Source", "Destination"], ["Quantity"]],
        parameters = [["Key"],["Value"]])
# ---------------------------------------------------------------------------------

# ------------------------ solving section-----------------------------------------
def solve(dat):
    """
    core solving routine
    :param dat: a good ticdat for the input_schema
    :return: a good ticdat for the solution_schema, or None
    """
    assert input_schema.good_tic_dat_object(dat)
    assert not input_schema.find_foreign_key_failures(dat)
    assert not input_schema.find_data_type_failures(dat)

    # pandas DataFrames make it easiest to populate amplpy.DataFrames
    dat = input_schema.copy_to_pandas(dat, drop_pk_columns=False)

    df_nodes = amplpy.DataFrame(index=('NODES',))
    df_nodes.setColumn('NODES', dat.nodes["Name"])

    df_arcs = amplpy.DataFrame(index=('SOURCE', 'DEST',))
    df_arcs.setColumn('SOURCE', dat.arcs["Source"])
    df_arcs.setColumn('DEST', dat.arcs["Destination"])
    df_arcs.addColumn('capacity', dat.arcs['Capacity'])

    df_commodity = amplpy.DataFrame(index=('COMMODITY',))
    df_commodity.setColumn('COMMODITY', dat.commodities["Name"])

    df_cost = amplpy.DataFrame(index=('COMMODITY', 'SOURCE', 'DEST',))
    df_cost.setColumn('COMMODITY', dat.cost["Commodity"])
    df_cost.setColumn('SOURCE', dat.cost["Source"])
    df_cost.setColumn('DEST', dat.cost["Destination"])
    df_cost.addColumn('cost', dat.cost["Cost"])

    df_inflow = amplpy.DataFrame(index=('COMMODITY', 'NODE', ))
    df_inflow.setColumn('COMMODITY', dat.inflow["Commodity"])
    df_inflow.setColumn('NODE', dat.inflow["Node"])
    df_inflow.addColumn('inflow', dat.inflow["Quantity"])

    ampl = amplpy.AMPL()
    ampl.setOption('solver', 'gurobi')
    ampl.eval("""
    set NODES;
    set ARCS within {i in NODES, j in NODES: i <> j};
    set COMMODITIES;

    param capacity {ARCS} >= 0;
    param cost {COMMODITIES,ARCS} > 0;
    param inflow {COMMODITIES,NODES};

    var Flow {COMMODITIES,ARCS} >= 0;

    minimize TotalCost:
       sum {h in COMMODITIES, (i,j) in ARCS} cost[h,i,j] * Flow[h,i,j];

    subject to Capacity {(i,j) in ARCS}:
       sum {h in COMMODITIES} Flow[h,i,j] <= capacity[i,j];

    subject to Conservation {h in COMMODITIES, j in NODES}:
       sum {(i,j) in ARCS} Flow[h,i,j] + inflow[h,j] = sum {(j,i) in ARCS} Flow[h,j,i];
    """)

    ampl.setData(df_nodes, 'NODES')
    ampl.setData(df_arcs, 'ARCS')
    ampl.setData(df_commodity, 'COMMODITIES')
    ampl.setData(df_cost)
    ampl.setData(df_inflow)

    ampl.solve()

    # TO DO : check solution success somehow

    flow = ampl.getVariable('Flow').getValues().toPandas().rename(columns={'Flow.val':"Quantity"})
    flow.index = pd.MultiIndex.from_tuples(flow.index, names = ("Commodity", "Source", "Destination"))

    sln = solution_schema.TicDat(flow = flow[flow['Quantity'] > 0])
    sln.parameters["Total Cost"] = ampl.getObjective('TotalCost').value()
    return sln
# ---------------------------------------------------------------------------------

# ------------------------ provide stand-alone functionality ----------------------
# when run from the command line, will read/write json/xls/csv/db/sql/mdb files
if __name__ == "__main__":
    standard_main(input_schema, solution_schema, solve)
# ---------------------------------------------------------------------------------
