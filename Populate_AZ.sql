INSERT INTO Store VALUES ('1234', '4532 Address Drive, Louisiana', '70058', '5043333333');
INSERT INTO Store VALUES ('1235', '1528 Certified Address, Louisiana', '70072', '5041111111');
INSERT INTO Store VALUES ('1238', '555 Acorn St, Louisiana, 70114', '70128', '9852225555');
INSERT INTO Store VALUES ('1256', '1644 Kepler Rd., Louisiana', '7085', '9214567890');
INSERT INTO Store VALUES ('1232', '714 3rd Avenue, Louisiana', '70058', '5046644444');
INSERT INTO Store VALUES ('1231', '1836 Industry Road, Louisiana', '70052', '5041112391');
INSERT INTO Store VALUES ('1275', '4242 Kepler St., Louisiana', '70037', '9852367777');
INSERT INTO Store VALUES ('4312', '4000 Ailine Blvd., Louisiana', '70049', '9852134267');
INSERT INTO store VALUES ('5300', '5654 Sinister Highway, Louisiana', '70142', '2348653343');
INSERT INTO Store VALUES ('9000', '8634 Acorn Road., Louisiana', '70235', '5559334232');
INSERT INTO Store VALUES ('1000', '0012 River Road, Louisiana', '70135', '5046678976');
INSERT INTO Store VALUES ('1985', '1678 Jefferson Blvd., Louisiana', '70096', '5042312333');
INSERT INTO Store VALUES ('6767', '55 RoadBrick Highway, Louisiana', '7545', '5046667867');
INSERT INTO Store VALUES ('4005', '1 Saint St., Louisiana', '70455', '9854003478');
INSERT INTO store VALUES ('1212', '3200 Wall St., Mississippi,', '80122', '9012763450');
INSERT INTO store VALUES ('1800', '6702 Destiny Road, Mississippi', '2325', '2752306754');
INSERT INTO store VALUES ('4006', '121 West Baton Drive, Louisiana', '7078', '9854322321');
INSERT INTO store VALUES ('5008', '76 Peters Road, Louisiana', '70058', '504777897');

INSERT INTO Inventory VALUES ('123456789', 'sh_title1', 'Description1', 500, '10', 123, TO_DATE('2018-04-28', 'YYYY-MM-DD'), 900, '1234');
INSERT INTO Inventory VALUES ('123456767', 'sh_title2', 'Description2', 330, '12', 200, TO_DATE('2020-05-20', 'YYYY-MM-DD'), 350, '5678');
INSERT INTO Inventory VALUES ('123123456', 'sh_title3', 'Description3', 55, '25', 47, TO_DATE('2019-04-22', 'YYYY-MM-DD'), 250, '9876');
INSERT INTO Inventory VALUES ('145678908', 'sh_title4', 'Description4', 133, '57', 84, TO_DATE('2018-03-11', 'YYYY-MM-DD'), 500, '5555');
INSERT INTO Inventory VALUES ('121245674', 'sh_title5', 'Description5', 99, '100', 229, TO_DATE('2019-08-20', 'YYYY-MM-DD'), 1000, '9876');

INSERT INTO Sales VALUES ('00373-3221234', TO_DATE('2020-03-10', 'YYYY-MM-DD'), '123456789', 200, 23000, 'Thank you for shopping with us!');
INSERT INTO Sales VALUES ('00373-3278923', TO_DATE('2020-08-20', 'YYYY-MM-DD'), '121245674', 15, 3800, 'Thank you for shopping with us!');
INSERT INTO Sales VALUES ('00373-3214563', TO_DATE('2020-07-31', 'YYYY-MM-DD'), '145678908', 30, 2600, 'Thank you for shopping with us!');
INSERT INTO Sales VALUES ('00372-2198479', TO_DATE('2020-06-15', 'YYYY-MM-DD'), '123123456', 50, 2350, 'Thank you for shopping with us!');
INSERT INTO Sales VALUES ('00373-2984321', TO_DATE('2020-04-01', 'YYYY-MM-DD'), '123456767', 67, 13200, 'Thank you for shopping with us!');

INSERT INTO Purchase VALUES ('01234', TO_DATE('2020-03-10', 'YYYY-MM-DD'), '123456789', 200, 23000, 'Thank you for your purchase.');
INSERT INTO Purchase VALUES ('01235', TO_DATE('2020-07-31', 'YYYY-MM-DD'), '145678908', 30, 2600, 'Thank you for your purchase.');
INSERT INTO Purchase VALUES ('01236', TO_DATE('2020-08-20', 'YYYY-MM-DD'), '121245674', 15, 3800, 'Thank you for your purchase.');
INSERT INTO Purchase VALUES ('01237', TO_DATE('2020-06-15', 'YYYY-MM-DD'), '123123456', 50, 2350, 'Thank you for your purchase.');
INSERT INTO Purchase VALUES ('01238', TO_DATE('2020-04-01', 'YYYY-MM-DD'), '123456767', 67, 13200, 'Thank you for your purchase.');

INSERT INTO Account_payable VALUES ('1341567', 50000);
INSERT INTO Account_payable VALUES ('1112313', 7500);
INSERT INTO Account_payable VALUES ('9874532', 4564);
INSERT INTO Account_payable VALUES ('4544342', 10000);
INSERT INTO Account_payable VALUES ('3234642', 23211);

INSERT INTO Account_receivable VALUES ('1341567', 1600);
INSERT INTO Account_receivable VALUES ('1112313', 500);
INSERT INTO Account_receivable VALUES ('9874532', 167);
INSERT INTO Account_receivable VALUES ('4544342', 2000);
INSERT INTO Account_receivable VALUES ('3234642', 15000);

INSERT INTO PurchasePaymentRecord VALUES ('1341567', '01234', TO_DATE('2020-03-10', 'YYYY-MM-DD'), 200, 'Credit');
INSERT INTO PurchasePaymentRecord VALUES ('1112313', '01235', TO_DATE('2020-07-31', 'YYYY-MM-DD'), 30, 'Credit');
INSERT INTO PurchasePaymentRecord VALUES ('9874532', '01236', TO_DATE('2020-08-20', 'YYYY-MM-DD'), 15, 'Debit');
INSERT INTO PurchasePaymentRecord VALUES ('4544342', '01237', TO_DATE('2020-06-15', 'YYYY-MM-DD'), 50, 'Credit');
INSERT INTO PurchasePaymentRecord VALUES ('3234642', '01238', TO_DATE('2020-04-01', 'YYYY-MM-DD'), 67, 'Credit');

INSERT INTO Person VALUES    (677509,'Lois', 'Walker','1682  Denver  Street  Denver , CO.',80224,'lois.walker@hotmail.com','F','303-572-8492');
INSERT INTO Person VALUES    (940761,'Brenda', 'Robinson','510  Stonewall  Street  Stonewall , LA.',71078,'brenda.robinson@gmail.com','F','225-945-4954');
INSERT INTO Person VALUES    (428945,'Joe', 'Robinson','501  Michigantown  Street  Michigantown , IN.',46057,'joe.robinson@gmail.com','M','219-904-2161');
INSERT INTO Person VALUES    (408351,'Diane', 'Evans','1802  Hydetown  Street  Hydetown , PA.',16328,'diane.evans@yahoo.com','F','215-793-6791');
INSERT INTO Person VALUES    (193819,'Benjamin', 'Russell','1176  Fremont  Street  Fremont , WI.',54940,'benjamin.russell@charter.net','M','262-404-2252');
INSERT INTO Person VALUES    (499687,'Patrick', 'Bailey','723  Macksburg  Street  Macksburg , IA.',50155,'patrick.bailey@aol.com','M','319-812-6957');
INSERT INTO Person VALUES    (539712,'Nancy', 'Baker','981  Atlanta  Street  Atlanta , GA.',30334,'nancy.baker@bp.com','F','229-336-5117');
INSERT INTO Person VALUES    (380086,'Carol', 'Murphy','609  Blanchester  Street  Blanchester , OH.',45107,'carol.murphy@gmail.com','F','216-336-0009');
INSERT INTO Person VALUES    (477616,'Frances', 'Young','1215  Delmita  Street  Delmita , TX.',78536,'frances.young@gmail.com','F','210-819-9765');
INSERT INTO Person VALUES    (162402,'Diana', 'Peterson','430  Eureka Springs  Street  Eureka Springs , AR.',72632,'diana.peterson@hotmail.co.uk','F','479-783-5656');
INSERT INTO Person VALUES    (231469,'Ralph', 'Flores','1184  Sabetha  Street  Sabetha , KS.',66534,'ralph.flores@yahoo.com','M','316-280-2864');
INSERT INTO Person VALUES    (153989,'Jack', 'Alexander','829  Las Vegas  Street  Las Vegas , NV.',89170,'jack.alexander@gmail.com','M','702-603-3769');
INSERT INTO Person VALUES    (386158,'Melissa', 'King','1668  New Matamoras  Street  New Matamoras , OH.',45767,'melissa.king@comcast.net','F','216-605-3731');
INSERT INTO Person VALUES    (301576,'Wayne', 'Watson','927  Maida  Street  Maida , ND.',58255,'wayne.watson@gmail.com','M','701-231-9370');
INSERT INTO Person VALUES    (441771,'Cheryl', 'Scott','922  Quecreek  Street  Quecreek , PA.',15555,'cheryl.scott@gmail.com','F','215-288-9345');
INSERT INTO Person VALUES    (528509,'Paula', 'Diaz','1526  Beulaville  Street  Beulaville , NC.',28518,'paula.diaz@gmail.com','F','252-531-7641');
INSERT INTO Person VALUES    (912990,'Joshua', 'Stewart','1848  New Douglas  Street  New Douglas , IL.',62074,'joshua.stewart@yahoo.ca','M','217-279-9342');
INSERT INTO Person VALUES    (214352,'Theresa', 'Lee','1975  Toeterville  Street  Toeterville , IA.',50481,'theresa.lee@gmail.com','F','319-553-8919');
INSERT INTO Person VALUES    (890290,'Julia', 'Scott','1415  Primm Springs  Street  Primm Springs , TN.',38476,'julia.scott@apple.com','F','423-939-1010');
INSERT INTO Person VALUES    (622406,'Thomas', 'Lewis','738  Dutchtown  Street  Dutchtown , MO.',63745,'thomas.lewis@gmail.com','M','314-679-3697');
INSERT INTO Person VALUES    (979607,'Carol', 'Edwards','939  Shreveport  Street  Shreveport , LA.',71162,'carol.edwards@msn.com','F','225-283-4295');
INSERT INTO Person VALUES    (969580,'Matthew', 'Turner','522  Heathsville  Street  Heathsville , VA.',22473,'matthew.turner@gmail.com','M','236-972-7624');
INSERT INTO Person VALUES    (426038,'Joan', 'Stewart','1116  Middleport  Street  Middleport , OH.',45760,'joan.stewart@yahoo.com','F','216-637-6800');
INSERT INTO Person VALUES    (388642,'Ruby', 'Rogers','1606  Woodbury  Street  Woodbury , TN.',37190,'ruby.rogers@gmail.com','F','423-231-6507');
INSERT INTO Person VALUES    (560455,'Carolyn', 'Hayes','420  Saint Cloud  Street  Saint Cloud , FL.',34771,'carolyn.hayes@hotmail.co.uk','F','239-882-8784');
INSERT INTO Person VALUES    (477253,'Anne', 'Russell','1031  Stockholm  Street  Stockholm , SD.',57264,'anne.russell@ibm.com','F','605-635-1306');
INSERT INTO Person VALUES    (263480,'Daniel', 'Cooper','1537  Manning  Street  Manning , ND.',58642,'daniel.cooper@yahoo.com','M','701-510-8162');
INSERT INTO Person VALUES    (683826,'Roger', 'Roberts','1296  Mount Vernon  Street  Mount Vernon , WA.',98273,'roger.roberts@gmail.com','M','206-497-3141');
INSERT INTO Person VALUES    (474599,'Maria', 'Walker','489  Lawrenceburg  Street  Lawrenceburg , TN.',38464,'maria.walker@microsoft.com','F','423-668-5506');
INSERT INTO Person VALUES    (335732,'Brenda', 'Butler','605  Mesa  Street  Mesa , AZ.',85208,'brenda.butler@gmail.com','F','480-814-8284');
INSERT INTO Person VALUES    (329752,'Lillian', 'Brown','672  Panacea  Street  Panacea , FL.',32346,'lillian.brown@aol.com','F','239-812-9041');
INSERT INTO Person VALUES    (893212,'Amy', 'Howard','1127  Kline  Street  Kline , SC.',29814,'amy.howard@aol.com','F','803-613-3168');
INSERT INTO Person VALUES    (621833,'Gregory', 'Edwards','1692  Bonanza  Street  Bonanza , OR.',97623,'gregory.edwards@outlook.com','M','503-256-9654');
INSERT INTO Person VALUES    (456747,'Roy', 'Griffin','1708  Liberty  Street  Liberty , IN.',47353,'roy.griffin@yahoo.com','M','219-506-9378');
INSERT INTO Person VALUES    (278556,'Richard', 'Mitchell','1222  Ohatchee  Street  Ohatchee , AL.',36271,'richard.mitchell@verizon.net','M','205-621-5884');
INSERT INTO Person VALUES    (333476,'Mary', 'Wilson','1093  Nashville  Street  Nashville , TN.',37219,'mary.wilson@sbcglobal.net','F','423-937-8660');
INSERT INTO Person VALUES    (218791,'Aaron', 'Price','544  Eckerty  Street  Eckerty , IN.',47116,'aaron.price@bp.com','M','219-287-8926');
INSERT INTO Person VALUES    (134841,'Donna', 'Brown','1298  Lima  Street  Lima , NY.',14485,'donna.brown@aol.com','F','212-434-7910');
INSERT INTO Person VALUES    (726264,'Carl', 'Collins','1621  Wright  Street  Wright , AR.',72182,'carl.collins@yahoo.com','M','479-740-7633');
INSERT INTO Person VALUES    (766610,'Joyce', 'Jenkins','1193  Ellsworth  Street  Ellsworth , WI.',54011,'joyce.jenkins@aol.com','F','262-455-4187');
INSERT INTO Person VALUES    (923947,'Mary', 'Bryant','1554  Conroy  Street  Conroy , IA.',52220,'mary.bryant@verizon.net','F','319-827-3516');
INSERT INTO Person VALUES    (227922,'Amanda', 'Hughes','1142  Lake Charles  Street  Lake Charles , LA.',70605,'amanda.hughes@rediffmail.com','F','225-544-9700');
INSERT INTO Person VALUES    (265813,'Jack', 'Campbell','1862  Kalvesta  Street  Kalvesta , KS.',67856,'jack.campbell@gmail.com','M','316-499-5737');
INSERT INTO Person VALUES    (247137,'Alan', 'Rivera','1548  Knoxville  Street  Knoxville , TN.',37901,'alan.rivera@apple.com','M','423-277-6819');
INSERT INTO Person VALUES    (407061,'Elizabeth', 'Jackson','854  Rochester  Street  Rochester , NH.',3867,'elizabeth.jackson@aol.com','F','603-568-6118');
INSERT INTO Person VALUES    (226714,'Nancy', 'Davis','949  Bowling Green  Street  Bowling Green , IN.',47833,'nancy.davis@ibm.com','F','219-610-3067');
INSERT INTO Person VALUES    (702813,'Ernest', 'Martinez','1720  Uniontown  Street  Uniontown , AR.',72955,'ernest.martinez@gmail.com','M','479-951-4138');
INSERT INTO Person VALUES    (524896,'Judy', 'Hernandez','1333  Topeka  Street  Topeka , KS.',66606,'judy.hernandez@gmail.com','F','316-736-6126');
INSERT INTO Person VALUES    (363065,'Nancy', 'Jones','619  New York City  Street  New York City , NY.',10087,'nancy.jones@gmail.com','F','212-825-1930');
INSERT INTO Person VALUES    (879753,'Pamela', 'Wright','1492  Banner  Street  Banner , WY.',82832,'pamela.wright@aol.com','F','307-329-8832');
INSERT INTO Person VALUES    (958326,'Larry', 'Miller','979  East Saint Louis  Street  East Saint Louis , IL.',62201,'larry.miller@shell.com','M','217-574-9283');
INSERT INTO Person VALUES    (447813,'Ann', 'Coleman','1300  Hancock  Street  Hancock , IA.',51536,'ann.coleman@ibm.com','F','319-994-4179');
INSERT INTO Person VALUES    (525955,'Judy', 'Gonzales','1495  Eatontown  Street  Eatontown , NJ.',7724,'judy.gonzales@gmail.com','F','201-640-8645');
INSERT INTO Person VALUES    (818384,'Peter', 'Washington','1732  Portage  Street  Portage , MI.',49024,'peter.washington@bp.com','M','231-322-0316');
INSERT INTO Person VALUES    (971640,'Clarence', 'Ross','1652  Oneida  Street  Oneida , TN.',37841,'clarence.ross@apple.com','M','423-772-0118');

INSERT INTO Works VALUES	(677509, '5001001', DATE '2017-01-01', DATE '2018-01-01');
INSERT INTO Works VALUES    (940761, '5001002', DATE '2015-12-01', DATE '2020-12-01');
INSERT INTO Works VALUES    (428945, '5001003', DATE '2007-02-01', DATE '2008-02-01');
INSERT INTO Works VALUES    (408351, '5001004', DATE '2011-08-01', DATE '2020-08-01');
INSERT INTO Works VALUES    (193819, '5001005', DATE '2017-11-01', DATE '2018-11-01');
INSERT INTO Works VALUES    (499687, '5001006', DATE '2015-11-01', DATE '2016-11-01');
INSERT INTO Works VALUES    (539712, '5001007', DATE '2015-06-01', DATE '2021-06-01');
INSERT INTO Works VALUES    (380086, '5001008', DATE '2011-06-01', DATE '2013-06-01');
INSERT INTO Works VALUES    (477616, '5001009', DATE '2016-08-01', DATE '2017-08-01');
INSERT INTO Works VALUES    (162402, '5001010', DATE '2015-10-01', DATE '2018-10-01');
INSERT INTO Works VALUES    (231469, '5001011', DATE '2013-01-01', DATE '2020-01-01');
INSERT INTO Works VALUES    (153989, '5001012', DATE '2013-10-01', DATE '2020-10-01');
INSERT INTO Works VALUES    (386158, '5001013', DATE '2013-08-01', DATE '2020-08-01');
INSERT INTO Works VALUES    (301576, '5001014', DATE '2010-01-01', DATE '2011-01-01');
INSERT INTO Works VALUES    (441771, '5001015', DATE '2016-02-01', DATE '2017-02-01');
INSERT INTO Works VALUES    (528509, '5001016', DATE '2015-02-01', DATE '2016-02-01');
INSERT INTO Works VALUES    (912990, '5001017', DATE '2007-07-01', DATE '2010-07-01');
INSERT INTO Works VALUES    (214352, '5001018', DATE '2017-09-01', DATE '2018-09-01');
INSERT INTO Works VALUES    (890290, '5001019', DATE '2017-12-01', DATE '2020-12-01');
INSERT INTO Works VALUES    (622406, '5001020', DATE '2011-05-01', DATE '2013-05-01');
INSERT INTO Works VALUES    (979607, '5001021', DATE '2017-09-01', DATE '2019-09-01');
INSERT INTO Works VALUES    (969580, '5001022', DATE '2010-09-01', DATE '2012-09-01');
INSERT INTO Works VALUES    (426038, '5001023', DATE '2013-02-01', DATE '2015-02-01');
INSERT INTO Works VALUES    (388642, '5001024', DATE '2015-03-01', DATE '2017-03-01');
INSERT INTO Works VALUES    (560455, '5001025', DATE '2007-02-01', DATE '2008-02-01');
INSERT INTO Works VALUES    (477253, '5001026', DATE '2014-08-01', DATE '2016-08-01');
INSERT INTO Works VALUES    (263480, '5001027', DATE '2015-08-01', DATE '2017-08-01');
INSERT INTO Works VALUES    (683826, '5001028', DATE '2012-09-01', DATE '2014-09-01');
INSERT INTO Works VALUES    (474599, '5001029', DATE '2007-06-01', DATE '2009-06-01');
INSERT INTO Works VALUES    (335732, '5001030', DATE '2012-02-01', DATE '2015-06-01');
INSERT INTO Works VALUES    (329752, '5001031', DATE '2016-10-01', DATE '2022-10-01');
INSERT INTO Works VALUES    (893212, '5001032', DATE '2008-07-01', DATE '2023-07-01');
INSERT INTO Works VALUES    (621833, '5001033', DATE '2009-04-01', DATE '2010-04-01');
INSERT INTO Works VALUES    (456747, '5001034', DATE '2010-05-01', DATE '2012-05-01');
INSERT INTO Works VALUES    (278556, '5001035', DATE '2015-03-01', DATE '2017-03-01');
INSERT INTO Works VALUES    (333476, '5001036', DATE '2013-10-01', DATE '2015-10-01');
INSERT INTO Works VALUES    (218791, '5001037', DATE '2011-05-01', DATE '2013-05-01');
INSERT INTO Works VALUES    (134841, '5001038', DATE '2013-11-01', DATE '2015-11-01');
INSERT INTO Works VALUES    (726264, '5001039', DATE '2012-06-01', DATE '2014-06-01');
INSERT INTO Works VALUES    (766610, '5001040', DATE '2015-06-01', DATE '2017-06-01');
INSERT INTO Works VALUES    (923947, '5001001', DATE '2015-03-01', DATE '2020-03-01');
INSERT INTO Works VALUES    (227922, '5001002', DATE '2013-09-01', DATE '2021-09-01');
INSERT INTO Works VALUES    (265813, '5001003', DATE '2007-12-01', DATE '2009-12-01');
INSERT INTO Works VALUES    (247137, '5001004', DATE '2012-06-01', DATE '2014-06-01');
INSERT INTO Works VALUES    (407061, '5001005', DATE '2016-01-01', DATE '2020-01-01');
INSERT INTO Works VALUES    (226714, '5001006', DATE '2010-08-01', DATE '2022-08-01');
INSERT INTO Works VALUES    (702813, '5001007', DATE '2010-08-01', DATE '2022-08-01');
INSERT INTO Works VALUES    (524896, '5001008', DATE '2017-01-01', DATE '2022-01-01');
INSERT INTO Works VALUES    (363065, '5001009', DATE '2016-08-01', DATE '2022-08-01');
INSERT INTO Works VALUES    (879753, '5001010', DATE '2007-06-01', DATE '2011-06-01');
INSERT INTO Works VALUES    (958326, '5001011', DATE '2014-06-01', DATE '2016-06-01');
INSERT INTO Works VALUES    (447813, '5001012', DATE '2017-04-01', DATE '2019-04-01');
INSERT INTO Works VALUES    (525955, '5001013', DATE '2011-04-01', DATE '2013-04-01');
INSERT INTO Works VALUES    (818384, '5001014', DATE '2017-04-01', DATE '2020-04-01');
INSERT INTO Works VALUES    (971640, '5001015', DATE '2017-08-01', DATE '2023-08-01');

INSERT INTO Positions VALUES    ('300101','Geologist','Energy',105000,85000);
INSERT INTO Positions VALUES    ('300102','Dealer','Materials',85000,65000);
INSERT INTO Positions VALUES    ('300103','Purchaser','Capital Goods',65000,45000);
INSERT INTO Positions VALUES    ('300104','Apprentice','Commercial  & Professional Services',35000,25000);
INSERT INTO Positions VALUES    ('300105','Pilot','Transportation',150000,75000);
INSERT INTO Positions VALUES    ('300106','Driver','Automobiles & Components',66000,45000);
INSERT INTO Positions VALUES    ('300107','Seamstress','Consumer Durables & Apparel',58000,48000);
INSERT INTO Positions VALUES    ('300108','Coordinator','Consumer Services',53000,23000);
INSERT INTO Positions VALUES    ('300109','Sales manager','Retailing',51000,48000);
INSERT INTO Positions VALUES    ('300110','Cook','Food & Staples Retailing',65000,38000);
INSERT INTO Positions VALUES    ('300111','Distributor','Food, Beverage & Tobacco',100000,56000);
INSERT INTO Positions VALUES    ('300112','Maid','Household & Personal Products',45000,35000);
INSERT INTO Positions VALUES    ('300113','Associate','Health Care Equipment & Services',35000,25000);
INSERT INTO Positions VALUES    ('300114','Researcher','Pharmaceuticals, Biotechnology & Life Sciences',42000,39000);
INSERT INTO Positions VALUES    ('300115','Teller','Banks',6600,52000);
INSERT INTO Positions VALUES    ('300116','Analyst','Diversified Financials',95000,87000);
INSERT INTO Positions VALUES    ('300117','Salesman','Insurance',96000,85000);
INSERT INTO Positions VALUES    ('300118','Programmer','Software & Services',115000,109000);
INSERT INTO Positions VALUES    ('300119','Technician','Technology Hardware & Equipment',185000,135000);
INSERT INTO Positions VALUES    ('300120','Operator','Utilities',125000,101000);


INSERT INTO Skill VALUES    ('112001','Geologist','Energy','beginner');
INSERT INTO Skill VALUES    ('112002','Dealer','Materials','medium');
INSERT INTO Skill VALUES    ('112003','Purchaser','Capital Goods','advanced');
INSERT INTO Skill VALUES    ('112004','Apprentice','Commercial  & Professional Services','beginner');
INSERT INTO Skill VALUES    ('112005','Pilot','Transportation','medium');
INSERT INTO Skill VALUES    ('112006','Driver','Automobiles & Components','advanced');
INSERT INTO Skill VALUES    ('112007','Seamstress','Consumer Durables & Apparel','beginner');
INSERT INTO Skill VALUES    ('112008','Coordinator','Consumer Services','medium');
INSERT INTO Skill VALUES    ('112009','Sales manager','Retailing','advanced');
INSERT INTO Skill VALUES    ('112010','Cook','Food & Staples Retailing','beginner');
INSERT INTO Skill VALUES    ('112011','Distributor','Food, Beverage & Tobacco','medium');
INSERT INTO Skill VALUES    ('112012','Maid','Household & Personal Products','advanced');
INSERT INTO Skill VALUES    ('112013','Associate','Health Care Equipment & Services','beginner');
INSERT INTO Skill VALUES    ('112014','Researcher','Pharmaceuticals, Biotechnology & Life Sciences','medium');
INSERT INTO Skill VALUES    ('112015','Teller','Banks','advanced');
INSERT INTO Skill VALUES    ('112016','Analyst','Diversified Financials','beginner');
INSERT INTO Skill VALUES    ('112017','Salesman','Insurance','medium');
INSERT INTO Skill VALUES    ('112018','Programmer','Software & Services','advanced');
INSERT INTO Skill VALUES    ('112019','Technician','Technology Hardware & Equipment','beginner');
INSERT INTO Skill VALUES    ('112020','Operator','Utilities','medium');


INSERT INTO has_skill VALUES (447813, '112015');
INSERT INTO has_skill VALUES (134841, '112016');
INSERT INTO has_skill VALUES (227922, '112017');
INSERT INTO has_skill VALUES (677509, '112018');
INSERT INTO has_skill VALUES (333476, '112019');

INSERT INTO requires VALUES ('300115', '112015');
INSERT INTO requires VALUES ('300116', '112016');
INSERT INTO requires VALUES ('300117', '112017');
INSERT INTO requires VALUES ('300118', '112018');
INSERT INTO requires VALUES ('300119', '112019');
INSERT INTO requires VALUES ('300120', '112018');

INSERT INTO job VALUES ('5001001', '1234', '300101','full time','1',15,'wage',96001,'Exxon');
INSERT INTO job VALUES ('5001002', '1235', '300102','full time','2',45000,'salary','96002','FedEx');
INSERT INTO job VALUES ('5001003', '1238', '300103','full time','3',18,'wage',96003,'Walmart');
INSERT INTO job VALUES ('5001004', '9000', '300104','part time','4',35000,'salary',96004,'Phizer');
INSERT INTO job VALUES ('5001005', '4005', '300105','part time','5',19,'wage',96005,'Ford');
INSERT INTO job VALUES ('5001006', '1235', '300106','part time','6',95000,'salary',96006,'Boeing');
INSERT INTO job VALUES ('5001007', '6767', '300107','full time','7',21,'wage',96007,'Turner');
INSERT INTO job VALUES ('5001008', '1000', '300108','part time','8',65000,'salary',96008,'Dnow');
INSERT INTO job VALUES ('5001009', '1212', '300109','full time','9',18,'wage',96009,'DXP');
INSERT INTO job VALUES ('5001010', '1985', '300110','full time','10',45000,'salary',96010,'AirProducts');
INSERT INTO job VALUES ('5001011', '4312', '300111','full time','1',17,'wage',96001,'Chase');
INSERT INTO job VALUES ('5001012', '1256', '300112','part time','2',28000,'salary',96002,'Mobil');
INSERT INTO job VALUES ('5001013', '5300', '300113','part time','3',25,'wage',96003,'WelsSupply');
INSERT INTO job VALUES ('5001014', '1232', '300114','part time','4',31000,'salary',96004,'John Deere');
INSERT INTO job VALUES ('5001015', '1231', '300115','full time','5',35,'wage',96005,'Cooper');
INSERT INTO job VALUES ('5001016', '1212', '300116','part time','6',45000,'salary',96006,'BullDog');
INSERT INTO job VALUES ('5001017', '1235', '300117','full time','7',45,'wage',96007,'INXS');
INSERT INTO job VALUES ('5001018', '1238', '300118','full time','8',68000,'salary',96008,'Eastbank');
INSERT INTO job VALUES ('5001019', '1275', '300119','full time','9',28,'wage',96009,'GulfCycle');
INSERT INTO job VALUES ('5001020', '5300', '300120','part time','10',58000,'salary',96010,'Lowes');
INSERT INTO job VALUES ('5001021', '4312', '300101','part time','1',15,'wage',96001,'G.N.Gonzales');
INSERT INTO job VALUES ('5001022', '4005', '300102','part time','2',53000,'salary',96002,'Lockheed');
INSERT INTO job VALUES ('5001023', '1234', '300103','full time','3',29,'wage',96003,'Ford');
INSERT INTO job VALUES ('5001024', '6767', '300104','part time','4',105000,'salary',96004,'Boeing');
INSERT INTO job VALUES ('5001025', '1231', '300105','full time','5',31,'wage',96005,'Turner');
INSERT INTO job VALUES ('5001026', '1235', '300106','full time','6',145000,'salary',96006,'Dnow');
INSERT INTO job VALUES ('5001027', '1000', '300107','full time','7',35,'wage',96007,'DXP');
INSERT INTO job VALUES ('5001028', '9000', '300108','part time','8',65000,'salary',96008,'AirProducts');
INSERT INTO job VALUES ('5001029', '1275', '300109','part time','9',38,'wage',96009,'Chase');
INSERT INTO job VALUES ('5001030', '1800', '300110','part time','10',38000,'salary',96010,'Mobil');
INSERT INTO job VALUES ('5001031', '4005', '300111','full time','1',42,'wage',96001,'WelsSupply');
INSERT INTO job VALUES ('5001032', '4006', '300112','part time','2',77000,'salary',96002,'John Deere');
INSERT INTO job VALUES ('5001033', '5008', '300113','full time','3',18,'wage',96003,'Cooper');
INSERT INTO job VALUES ('5001034', '1256', '300114','full time','4',74000,'salary',96004,'BullDog');
INSERT INTO job VALUES ('5001035', '5008', '300115','full time','5',16,'wage',96005,'INXS');
INSERT INTO job VALUES ('5001036', '4006', '300116','part time','6',75000,'salary',96006,'Eastbank');
INSERT INTO job VALUES ('5001037', '1232', '300117','part time','7',15,'wage',96007,'GulfCycle');
INSERT INTO job VALUES ('5001038', '6767', '300118','part time','8',68000,'salary',96008,'Lowes');
INSERT INTO job VALUES ('5001039', '1231', '300119','full time','9',14,'wage',96009,'G.N.Gonzales');
INSERT INTO job VALUES ('5001040', '1800', '300120','part time','10',69000,'salary',96010,'Lockheed');

INSERT INTO Supplier VALUES ('0112', 'https://www.website1.com/', 'website1@gmail.com');
INSERT INTO Supplier VALUES ('0113', 'https://www.website2.com/', 'website2@web.domain.com');
INSERT INTO Supplier VALUES ('0114', 'https://www.website3.com/', 'website3@emailweb.com');
INSERT INTO Supplier VALUES ('0115', 'https://www.website4.com/', 'website4@secretdomain.com');
INSERT INTO Supplier VALUES ('0116', 'https://www.website5.com/', 'website5@outlook.com');

