INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('FAST','D2',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('FAST','S1',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('FAST','D1',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('STND','S1',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('STND','D1',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('FAST','S2',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('STND','S2',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('STND','D2',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('FAST','D3',99);
INSERT INTO [available] ([Vehicle Type],[City],[Number Vehicles]) VALUES ('STND','D3',99);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (1,'S1','D1',1);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (2,'S1','D1',4);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (3,'S1','D1',7);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (4,'S1','D1',10);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (5,'S1','D1',13);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (6,'S1','D2',9);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (7,'S1','D2',15);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (8,'S1','D3',6);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (9,'S1','D3',12);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (10,'S2','D1',3);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (11,'S2','D1',6);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (12,'S2','D1',9);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (13,'S2','D1',12);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (14,'S2','D2',7);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (15,'S2','D2',10);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (16,'S2','D2',13);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (17,'S2','D2',15);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (18,'S2','D3',5);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (19,'S2','D3',10);
INSERT INTO [load] ([Number],[Origin City],[Destination City],[Departure Time]) VALUES (20,'S2','D3',15);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D2','D3',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D2','S1',2.1,2.1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D3','S1',1.5,1.5,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D2','D1',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D2','S2',2,2,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S2','S1',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S2','S2',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S2','D3',1,1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S2','D1',1,1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D3','S2',1,1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D1','S1',1.5,1.5,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S1','D1',2,2,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D3','D2',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D3','D3',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D2','S1',3,3,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D3','D1',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S2','D2',2,2,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S1','D2',3,3,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S1','D3',2,2,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D2','D3',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D3','D3',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D1','S2',1,1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D2','D2',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S1','D1',1.5,1.5,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D3','D2',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D1','D2',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D2','D1',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S2','D1',1,1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S1','D3',1.5,1.5,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D1','D3',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S1','S2',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S2','D2',1.5,1.5,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S1','S1',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S1','D2',2.1,2.1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D1','D2',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S2','S1',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S2','D3',1,1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S1','S2',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D2','D2',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D1','D1',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D1','D3',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D1','D1',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D2','S2',1.5,1.5,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D3','S1',2,2,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D1','S1',2,2,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','S2','S2',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','D3','S2',1,1,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('STND','S1','S1',0,0,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D3','D1',99,99,0);
INSERT INTO [travel] ([Vehicle Type],[Origin City],[Destination City],[Loaded Time],[Deadhead Time],[Deadhead Cost]) VALUES ('FAST','D1','S2',1,1,0);
INSERT INTO [vehicles] ([Vehicle Type],[Fixed Cost],[Fixed Size]) VALUES ('STND',1,99);
INSERT INTO [vehicles] ([Vehicle Type],[Fixed Cost],[Fixed Size]) VALUES ('FAST',1.5,1);
INSERT INTO [city] ([Name]) VALUES ('S2');
INSERT INTO [city] ([Name]) VALUES ('S1');
INSERT INTO [city] ([Name]) VALUES ('D2');
INSERT INTO [city] ([Name]) VALUES ('D3');
INSERT INTO [city] ([Name]) VALUES ('D1');
