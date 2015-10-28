INSERT INTO Registered_User
    VALUES ('mikeygmikeyg','lebron23','mcg5215@psu.edu','Michael C. Gardner',02/24/1994,10000000,'M','1','0000111122223331'),
    ('zhucity','password2','miz5000@psu.edu','Matthew Zhu',08/25/1994,100,'M','2','0000111122223332'),
    ('gamergirl68','password3','gamezzz@gmail.com','Lanisha H. Jefferson',03/25/1990,0,'M','3','0000111122223333'),
    ('LeBronJames23','lebrongoat','lebron@cavs.com','Lebron James',12/30/1984,24000000,'M','4','0000111122223334'),
    ('jeez24','geeze12','enis@gmail.com','Enis H. Gorder',12/12/1995,0,'M','5','0000111122223335'),
    ('derrickrose','injury23','maybenextyear@bulls.com','Derrick Rose',08/04/1988,12000000,'M','6','0000111122223336'),
    ('kateupton1000','password33','kateupton@yahoo.com','Katelyn Upton',06/10/1992,200000,'F','7','0000111122223337'),
    ('barackobama12','president12','bo@whitehouse.gov','Barrack H. Obama',08/04/1961,4000000,'M','8','0000111122223338'),
    ('kyrieirving8','cavs2','kyrie@cavs.com','Kyrie Iriving',03/23/1992,12000000,'M','9','0000111122223339'),
    ('serenawilliams','tennis13','serena@gmail.com','Serena Willaims',09/26/1981,5000000,'F','10','0000111122223310'),
    ('iggyazalea','music70','iggy@bing.com','Iggy Azalea',06/07/1990,15000000,'F','11','0000111122223311'),
    ('fettywap1738','ayyyyyy','fetty@gmail.com','Fetty H. Wap',06/07/1991,3000000,'M','12','0000111122223312'),
    ('rubenslikk','fishmix','astroslikk@metrozu.com','Ruben',06/07/1989,3300000,'M','13','0000111122223313'),
    ('orderback','noun','indvidual@faciliate.com','Ordering O. Food',01/01/1991,3000000,'M','14','0000111122223314'),
    ('Karl22','red12','karlmarx@marx.com','Karl Marx',05/05/1818,2000,'M','15','0000111122223315');

INSERT INTO Contact_Info
    VALUES ('1','1 Main Rd','State College','PA','16801','5555555555'),
    ('2','2 Main Rd','State College','PA','16801','5555555555'),
    ('3','3 Main Rd','State College','PA','16801','5555555555'),
    ('4','4 Main Rd','State College','PA','16801','5555555555'),
    ('5','5 Main Rd','State College','PA','16801','5555555555'),
    ('6','6 Main Rd','State College','PA','16801','5555555555'),
    ('7','7 Main Rd','State College','PA','16801','5555555555'),
    ('8','8 Main Rd','State College','PA','16801','5555555555'),
    ('9','9 Main Rd','State College','PA','16801','5555555555'),
    ('10','10 Main Rd','State College','PA','16801','5555555555'),
    ('11','11 Main Rd','State College','PA','16801','5555555555'),
    ('12','12 Main Rd','State College','PA','16801','5555555555'),
    ('13','13 Main Rd','State College','PA','16801','5555555555'),
    ('14','14 Main Rd','State College','PA','16801','5555555555'),
    ('15','15 Main Rd','State College','PA','16801','5555555555');

INSERT INTO Payment_Info
    VALUES ('0000111122223331','VISA',01/01/2021),
    ('0000111122223332','VISA',01/01/2021),
    ('0000111122223333','VISA',01/01/2021),
    ('0000111122223334','VISA',01/01/2021),
    ('0000111122223335','AMEX',01/01/2021),
    ('0000111122223336','AMEX',01/01/2021),
    ('0000111122223337','AMEX',01/01/2021),
    ('0000111122223338','AMEX',01/01/2021),
    ('0000111122223339','DISC',01/01/2021),
    ('0000111122223310','DISC',01/01/2021),
    ('0000111122223311','DISC',01/01/2021),
    ('0000111122223312','MSTR',01/01/2021),
    ('0000111122223313','MSTR',01/01/2021),
    ('0000111122223314','MSTR',01/01/2021),
    ('0000111122223315','MSTR',01/01/2021);

INSERT INTO Buyer
    VALUES ('mikeygmikeyg'),
    ('zhucity'),
    ('gamergirl68'),
    ('LeBronJames23'),
    ('jeez24'),
    ('derrickrose'),
    ('kateupton1000'),
    ('barackobama12'),
    ('kyrieirving8'),
    ('serenawilliams');

INSERT INTO Seller
    VALUES ('iggyazalea'),
    ('fettywap1738'),
    ('rubenslikk'),
    ('orderback'),
    ('Karl22');

INSERT INTO Supplier
    VALUES ('orderback', 'Order Inc.', '1', '1', 'Food', 1000000);

INSERT INTO Person_Contact
    VALUES ('1', '5555555555', 'mikeyg@mikeyg.mikeyg');

INSERT INTO Address_Info
    VALUES ('1', '1 Main St', 'State College', 'PA', '16801');

INSERT INTO Rating
    VALUES ('1', 'Average!', 'mikeygmikeyg', 'zhucity');

INSERT INTO Delivery
    VALUES ('1', 0, 1),
    ('2', 1, 1);

 INSERT INTO Sale_Item
     VALUES ('100001','Kitkat','Chocolate','1.99'),
     ('100002','Marshmallow','Candy','0.99'),
     ('100003','Lollipop','Candy','2.99'),
     ('100004','Hershey','Chocolate','3.99'),
     ('100005','Bacon','Meat','7.99'),
     ('100006','Ribs','Meat','8.99'),
     ('100007','Chicken','Meat','9.59'),
     ('100008','Sausage','Meat','5.99'),
     ('100009','Egg','Meat','3.99'),
     ('100010','Cheese','Milk','2.99'),
     ('100011','Snapple','Juice','7.99'),
     ('100012','Cola','Soda','3.99'),
     ('100013','Cookie','Home-made','5.99'),
     ('100014','Pastas','Home-made','7.99'),
     ('100015','Boneless-chicken','Home-made','5.00'),
     ('100016','M&M','Candy','1.99'),
     ('100017','Lays','Chip','3.99'),
     ('100018','Mocha','Coffee','2.99'),
     ('100019','Oreo','chocolate cookie','2.99'),
     ('100020','Spinach Pizza','spinach and fita','14.99'),
     ('100021','Honolulu Pizza','pineapple and meat','14.99'),
     ('100022','Philly Pizza','cheese steak','16.99'),
     ('100023','Hawaiian Pizza','jalapeno and ham','14.99'),
     ('100024','Pasta Primavera','spinach and tomatoes','12.99'),
     ('100025','Italian Pasta','italian sausage','8.99'),
     ('100026','Alfredo Pasta','chicken','8.99'),
     ('100027','Wings','Marinated over-baked','5.99'),
     ('100028','Cheesy Bread','oven-baked','3.99'),
     ('100029','Candy Apples','apples with coating','5.99'),
     ('100030','Champagne Cake','lovely white cake','5.99'),
     ('100031','Mummy Dogs','hotdogs','2.99'),
     ('100032','Pumpkin Smoothies','pumpkin','4.99'),
     ('100033','Chocolate Spiders','chocolate','5.99'),
     ('100034','Pumpkin Cookies','Cookies','3.99'),
     ('100035','Chip Bread Pudding','chocolaty-banana','3.99'),
     ('100036','Pumpkin Seeds','sweet','2.99'),
     ('100037','Peanut Butter','chocolate','1.00'),
     ('100038','Lemon Cookies','taste like lemon','3.99'),
     ('100039','Shortbread Cookie','chocolate-dipped','3.99'),
     ('100040','Fish Dry Pot','fish and vegetables','8.99'),
     ('100041','Sliced Flounder','chili sauce','3.99'),
     ('100042','French Fries','new baked','3.99'),
     ('100043','Cooked Scallop','dry cooked','6.99'),
     ('100044','Fries Chicken Wrap','with tomatoes','5.99'),
     ('100045','Brisket Sandwich','BBQ beef','7.99'),
     ('100046','Curry Chicken','red curry','5.99'),
     ('100047','Curry Beef','green curry','6.99'),
     ('100048','Salad','tomato and cabbage','5.99'),
     ('100049','red bean ice cream','red bean','3.99'),
     ('100050','fried banana','with ice cream','3.99');
    
    INSERT INTO Sale_Item(
    VALUES ('100051','Kitkat','Chocolate')
    VALUES ('100052','Marshmallow','Candy')
    VALUES ('100053','Lollipop','Candy')
    VALUES ('100054','Hershey','Chocolate')
    VALUES ('100055','Bacon','Meat')
    VALUES ('100056','Ribs','Meat')
    VALUES ('100057','Chicken','Meat')
    VALUES ('100058','Sausage','Meat')
    VALUES ('100059','Egg','Meat')
    VALUES ('100060','Cheese','Milk')
    VALUES ('100061','Snapple','Juice')
    VALUES ('100062','Cola','Soda')
    VALUES ('100063','Cookie','Home-made')
    VALUES ('100064','Pastas','Home-made')
    VALUES ('100065','Boneless-chicken','Home-made')
    VALUES ('100066','M&M','Candy')
    VALUES ('100067','Lays','Chip')
    VALUES ('100068','Mocha','Coffee')
    VALUES ('100069','Oreo','chocolate cookie')
    VALUES ('100070','Spinach Pizza','spinach and fita')
    VALUES ('100071','Honolulu Pizza','pineapple and meat')
    VALUES ('100072','Philly Pizza','cheese steak')
    VALUES ('100073','Hawaiian Pizza','jalapeno and ham')
    VALUES ('100074','Pasta Primavera','spinach and tomatoes')
    VALUES ('100075','Italian Pasta','italian sausage')
    VALUES ('100076','Alfredo Pasta','chicken')
    VALUES ('100077','Wings','Marinated over-baked')
    VALUES ('100078','Cheesy Bread','oven-baked')
    VALUES ('100079','Candy Apples','apples with coating')
    VALUES ('100070','Champagne Cake','lovely white cake') 
    VALUES ('100081','Mummy Dogs','hotdogs')
    VALUES ('100082','Pumpkin Smoothies','pumpkin')
    VALUES ('100083','Chocolate Spiders','chocolate')
    VALUES ('100084','Pumpkin Cookies','Cookies')
    VALUES ('100085','Chip Bread Pudding','chocolaty-banana')
    VALUES ('100086','Pumpkin Seeds','sweet')
    VALUES ('100087','Peanut Butter','chocolate')
    VALUES ('100088','Lemon Cookies','taste like lemon')
    VALUES ('100089','Shortbread Cookie','chocolate-dipped')
    VALUES ('100090','Fish Dry Pot','fish and vegetables')
    VALUES ('100091','Sliced Flounder','chili sauce')
    VALUES ('100092','French Fries','new baked')
    VALUES ('100093','Cooked Scallop','dry cooked')
    VALUES ('100094','Fries Chicken Wrap','with tomatoes')
    VALUES ('100095','Brisket Sandwich','BBQ beef')
    VALUES ('100096','Curry Chicken','red curry')
    VALUES ('100097','Curry Beef','green curry')
    VALUES ('100098','Salad','tomato and cabbage')
    VALUES ('100099','red bean ice cream','red bean')
    VALUES ('100100','fried banana','with ice cream')
