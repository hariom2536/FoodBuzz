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
    VALUES ('0000111122223331','VISA','2021-01-01'),
    ('0000111122223332','VISA','2021-01-01'),
    ('0000111122223333','VISA','2021-01-01'),
    ('0000111122223334','VISA','2021-01-01'),
    ('0000111122223335','AMEX','2021-01-01'),
    ('0000111122223336','AMEX','2021-01-01'),
    ('0000111122223337','AMEX','2021-01-01'),
    ('0000111122223338','AMEX','2021-01-01'),
    ('0000111122223339','DISC','2021-01-01'),
    ('0000111122223310','DISC','2021-01-01'),
    ('0000111122223311','DISC','2021-01-01'),
    ('0000111122223312','MSTR','2021-01-01'),
    ('0000111122223313','MSTR','2021-01-01'),
    ('0000111122223314','MSTR','2021-01-01'),
    ('0000111122223315','MSTR','2021-01-01');

INSERT INTO Registered_User
    VALUES ('mikeygmikeyg','lebron23','mcg5215@psu.edu','Michael C. Gardner','1994-02-24',10000000,'M','1','0000111122223331'),
    ('zhucity','password2','miz5000@psu.edu','Matthew Zhu','1994-08-25',100,'M','2','0000111122223332'),
    ('gamergirl68','password3','gamezzz@gmail.com','Lanisha H. Jefferson','1990-03-25',0,'M','3','0000111122223333'),
    ('LeBronJames23','lebrongoat','lebron@cavs.com','Lebron James','1984-12-30',24000000,'M','4','0000111122223334'),
    ('jeez24','geeze12','enis@gmail.com','Enis H. Gorder','1995-12-12',0,'M','5','0000111122223335'),
    ('derrickrose','injury23','maybenextyear@bulls.com','Derrick Rose','1988-08-04',12000000,'M','6','0000111122223336'),
    ('kateupton1000','password33','kateupton@yahoo.com','Katelyn Upton','1992-06-10',200000,'F','7','0000111122223337'),
    ('barackobama12','president12','bo@whitehouse.gov','Barrack H. Obama','1961-08-04',4000000,'M','8','0000111122223338'),
    ('kyrieirving8','cavs2','kyrie@cavs.com','Kyrie Iriving','1992-03-23',12000000,'M','9','0000111122223339'),
    ('serenawilliams','tennis13','serena@gmail.com','Serena Willaims','1981-09-26',5000000,'F','10','0000111122223310'),
    ('iggyazalea','music70','iggy@bing.com','Iggy Azalea','1990-06-07',15000000,'F','11','0000111122223311'),
    ('fettywap1738','ayyyyyy','fetty@gmail.com','Fetty H. Wap','1991-06-07',3000000,'M','12','0000111122223312'),
    ('rubenslikk','fishmix','astroslikk@metrozu.com','Ruben','1989-06-07',3300000,'M','13','0000111122223313'),
    ('orderback','noun','individual@faciliate.com','Ordering O. Food','1991-01-01',3000000,'M','14','0000111122223314'),
    ('Karl22','red12','karlmarx@marx.com','Karl Marx','1818-05-05',200000,'M','15','0000111122223315');

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
    ('serenawilliams'),
    ('orderback');

INSERT INTO Seller
    VALUES ('iggyazalea'),
    ('fettywap1738'),
    ('rubenslikk'),
    ('orderback'),
    ('Karl22');

INSERT INTO Person_Contact
    VALUES ('1', '5555555555', 'mikeyg@mikeyg.mikeyg');

INSERT INTO Address_Info
    VALUES ('1', '1 Main St', 'State College', 'PA', '16801');

INSERT INTO Supplier
    VALUES ('orderback', 'Order Inc.', '1', '1', 'Food', 1000000);

INSERT INTO Rating
    VALUES ('1', 'Average!', 'mikeygmikeyg', 'zhucity');

INSERT INTO Delivery
    VALUES ('1', 0, 1),
    ('2', 1, 1);

 INSERT INTO Sale_Item
     VALUES ('100001','Kitkat','Chocolate','1.99','iggyazalea'),
     ('100002','Marshmallow','Candy','0.99','iggyazalea'),
     ('100003','Lollipop','Candy','2.99','iggyazalea'),
     ('100004','Hershey','Chocolate','3.99','iggyazalea'),
     ('100005','Bacon','Meat','7.99','iggyazalea'),
     ('100006','Ribs','Meat','8.99','iggyazalea'),
     ('100007','Chicken','Meat','9.59','iggyazalea'),
     ('100008','Sausage','Meat','5.99','iggyazalea'),
     ('100009','Egg','Meat','3.99','iggyazalea'),
     ('100010','Cheese','Milk','2.99','iggyazalea'),
     ('100011','Snapple','Juice','7.99','fettywap1738'),
     ('100012','Cola','Soda','3.99','fettywap1738'),
     ('100013','Cookie','Home-made','5.99','fettywap1738'),
     ('100014','Pastas','Home-made','7.99','fettywap1738'),
     ('100015','Boneless-chicken','Home-made','5.00','fettywap1738'),
     ('100016','M&M','Candy','1.99','fettywap1738'),
     ('100017','Lays','Chip','3.99','fettywap1738'),
     ('100018','Mocha','Coffee','2.99','fettywap1738'),
     ('100019','Oreo','chocolate cookie','2.99','fettywap1738'),
     ('100020','Spinach Pizza','spinach and fita','14.99','fettywap1738'),
     ('100021','Honolulu Pizza','pineapple and meat','14.99','rubenslikk'),
     ('100022','Philly Pizza','cheese steak','16.99','rubenslikk'),
     ('100023','Hawaiian Pizza','jalapeno and ham','14.99','rubenslikk'),
     ('100024','Pasta Primavera','spinach and tomatoes','12.99','rubenslikk'),
     ('100025','Italian Pasta','italian sausage','8.99','rubenslikk'),
     ('100026','Alfredo Pasta','chicken','8.99','rubenslikk'),
     ('100027','Wings','Marinated over-baked','5.99','rubenslikk'),
     ('100028','Cheesy Bread','oven-baked','3.99','rubenslikk'),
     ('100029','Candy Apples','apples with coating','5.99','rubenslikk'),
     ('100030','Champagne Cake','lovely white cake','5.99','rubenslikk'),
     ('100031','Mummy Dogs','hotdogs','2.99','orderback'),
     ('100032','Pumpkin Smoothies','pumpkin','4.99','orderback'),
     ('100033','Chocolate Spiders','chocolate','5.99','orderback'),
     ('100034','Pumpkin Cookies','Cookies','3.99','orderback'),
     ('100035','Chip Bread Pudding','chocolaty-banana','3.99','orderback'),
     ('100036','Pumpkin Seeds','sweet','2.99','orderback'),
     ('100037','Peanut Butter','chocolate','1.00','orderback'),
     ('100038','Lemon Cookies','taste like lemon','3.99','orderback'),
     ('100039','Shortbread Cookie','chocolate-dipped','3.99','orderback'),
     ('100040','Fish Dry Pot','fish and vegetables','8.99','orderback'),
     ('100041','Sliced Flounder','chili sauce','3.99','Karl22'),
     ('100042','French Fries','new baked','3.99','Karl22'),
     ('100043','Cooked Scallop','dry cooked','6.99','Karl22'),
     ('100044','Fries Chicken Wrap','with tomatoes','5.99','Karl22'),
     ('100045','Brisket Sandwich','BBQ beef','7.99','Karl22'),
     ('100046','Curry Chicken','red curry','5.99','Karl22'),
     ('100047','Curry Beef','green curry','6.99','Karl22'),
     ('100048','Salad','tomato and cabbage','5.99','Karl22'),
     ('100049','red bean ice cream','red bean','3.99','Karl22'),
     ('100050','fried banana','with ice cream','3.99','Karl22');
    
    INSERT INTO Auction_Item
    VALUES ('100051','Edamame','Soy Bean','0.99','5.99','orderback','2015-11-30','2015-12-12','iggyazalea'),
     ('100052','Wasabi Shumai','Pork Dumplings','2.99','7.99','orderback','2015-11-30','2015-12-12','iggyazalea'),
     ('100053','Kushi Yaki','Beef Dumplings','2.99','8.99','orderback','2015-11-30','2015-12-12','iggyazalea'),
     ('100054','Tempure Appetizer','Shrimp or Chicken','1.99','7.99','orderback','2015-11-30','2015-12-12','iggyazalea'),
     ('100055','Age Tofu','Fried Tofu','0.99','6.99','orderback','2015-11-30','2015-12-12','iggyazalea'),
     ('100056','Sushi Appetizer','4 pieces','3.99','9.99','mikeygmikeyg','2015-11-30','2015-12-12','iggyazalea'),
     ('100057','Harumaki','Spring Roll','3.59','7.99','mikeygmikeyg','2015-11-30','2015-12-12','iggyazalea'),
     ('100058','Fried Calamari','With BBQ Sauce','4.59','10.99','mikeygmikeyg','2015-11-30','2015-12-12','iggyazalea'),
     ('100059','Vege Teriyaki','Vegetables','5.99','15.59','mikeygmikeyg','2015-11-30','2015-12-12','iggyazalea'),
     ('100060','Chicken Teriyaki','Chicken','6.59','17.99','mikeygmikeyg','2015-11-30','2015-12-12','iggyazalea'),
     ('100061','Eel Hand Roll','with avocado','3.59','7.99','mikeygmikeyg','2015-11-30','2015-12-12','fettywap1738'),
     ('100062','Salmon Hand Roll','With Cucumber','3.59','7.99','mikeygmikeyg','2015-11-30','2015-12-12','fettywap1738'),
     ('100063','Crab & Cheese','Irish Cheese','7.99','15.59','mikeygmikeyg','2015-11-30','2015-12-12','fettywap1738'),
     ('100064','Chicken Tender','BBQ Sauce','3.99','12.59','mikeygmikeyg','2015-11-30','2015-12-12','fettywap1738'),
     ('100065','Irish Nachos','House-made','8.99','16.69','mikeygmikeyg','2015-11-30','2015-12-12','fettywap1738'),
     ('100066','Fajita Tacos','Chicken','8.59','16.99','mikeygmikeyg','2015-11-30','2015-12-12','fettywap1738'),
     ('100067','Shrimp Tacos','Crispy','7.99','17.59','zhucity','2015-11-30','2015-12-12','fettywap1738'),
     ('100068','Phily Cheesesteak','Beef or Chicken','5.59','13.99','zhucity','2015-11-30','2015-12-12','fettywap1738'),
     ('100069','Fish & Chips','Cold Water Cod','7.99','19.99','zhucity','2015-11-30','2015-12-12','fettywap1738'),
     ('100070','Shepherd Pie','beef and mushrooms','9.99','19.59','zhucity','2015-11-30','2015-12-12','fettywap1738'),
     ('100071','Apple Pie','Apple','5.99','15.59','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100072','Chocolate Pie','Chocolate','6.99','17.99','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100073','Mashups','Fruit Sauce ','0.99','3.99','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100074','Cracker jack','Popcorn','2.99','5.99','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100075','Veggie','Vegetable and potato chip','1.99','4.99','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100076','Takis','Chip','0.99','2.33','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100077','Banana nut','Cookies','0.99','2.88','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100078','Pepperidge farm','Chocolate','1.99','4.99','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100079','On the border','Sauce','0.99','2.55','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100080','Pudding bars','Pudding','0.99','3.99','zhucity','2015-11-30','2015-12-12','rubenslikk'),
     ('100081','Velveeta','Cheese','5.00','5.96','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100082','Hershey’s spreads','Chocolate','2.99','3.59','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100083','Quaker Protein','Butter chocolate','1.99','3.55','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100084','Motts','Fruit snacks','2.99','3.59','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100085','tostitos','Chips','3.59','5.59','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100086','lays classic Mix 20 pk','chips','5.99','6.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100087','Welch','Fruit snacks','2.99','3.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100088','Gluten free','Snacks','1.99','3.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100089','Swiss miss','pudding','1.99','5.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100090','Goldfish','Snack','2.99','5.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100091','Doritos','Chips','0.99','3.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100092','Cheese balls','Cheese','1.99','5.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100093','Zesta','Snacks','0.99','3.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100094','Ruffles','Chips','2.99','4.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100095','Dove','Chocolate','3.99','7.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100096','Planters','Nuts','3.99','7.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100097','Fig Bar','Bakery','0.99','2.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100098','Santitas','Chips','0.99','2.00','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100099','Beef jerky','Beef','0.99','3.99','zhucity','2015-11-30','2015-12-12','orderback'),
     ('100100','Chex mix','Traditional Snack','0.99','4.99','zhucity','2015-11-30','2015-12-12','orderback');

INSERT INTO Sale
VALUES ('2015-12-01', '100010', '1', 'mikeygmikeyg','0000111122223331');

INSERT INTO Auction
VALUES ('2015-12-02', '100097', '2', 'LeBronJames23','0000111122223334');
    

