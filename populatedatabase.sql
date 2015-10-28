INSERT INTO Registered_User(
    VALUES ('mikeygmikeyg','lebron23','mcg5215@psu.edu','Michael C. Gardner',02/24/1994,10000000,'M','1','0000111122223331'),
    VALUES ('zhucity','password2','miz5000@psu.edu','Matthew Zhu',08/25/1994,100,'M','2','0000111122223332'),
    VALUES ('gamergirl68','password3','gamezzz@gmail.com','Lanisha H. Jefferson',03/25/1990,0,'M','3','0000111122223333'),
    VALUES ('LeBronJames23','lebrongoat','lebron@cavs.com','Lebron James',12/30/1984,24000000,'M','4','0000111122223334'),
    VALUES ('jeez24','geeze12','enis@gmail.com','Enis H. Gorder','Enis',12/12/1995,0,'M','5','0000111122223335'),
    VALUES ('derrickrose','injury23','maybenextyear@bulls.com','Derrick Rose',08/04/1988,12000000,'M','6','0000111122223336'),
    VALUES ('kateupton1000','password33','kateupton@yahoo.com','Katelyn Upton',06/10/1992,200000,'F','7','0000111122223337'),
    VALUES ('barackobama12','president12','bo@whitehouse.gov','Barrack H. Obama',08/04/1961,4000000,'M','8','0000111122223338'),
    VALUES ('kyrieirving8','cavs2','kyrie@cavs.com','Kyrie Iriving',03/23/1992,12000000,'M','9','0000111122223339'),
    VALUES ('serenawilliams','tennis13','serena@gmail.com','Serena Willaims',09/26/1981,5000000,'F','10','0000111122223310'),
    VALUES ('iggyazalea','music70','iggy@bing.com','Iggy Azalea',06/07/1990,15000000,'F','11','0000111122223311'),
    VALUES ('fettywap1738','ayyyyyy','fetty@gmail.com','Fetty H. Wap',06/07/1991,3000000,'M','12','0000111122223312'),
    VALUES ('rubenslikk','fishmix','astroslikk@metrozu.com','Ruben',06/07/1989,3300000,'M','13','0000111122223313'),
    VALUES ('orderback','noun','indvidual@faciliate.com','Ordering O. Food',01/01/1991,3000000,'M','14','0000111122223314'),
    VALUES ('Karl22','red12','karlmarx@marx.com','Karl Marx',05/05/1818,2000,'M','15','0000111122223315'),
    );

INSERT INTO Contact_Info(
    VALUES ('1','1 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('2','2 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('3','3 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('4','4 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('5','5 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('6','6 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('7','7 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('8','8 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('9','9 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('10','10 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('11','11 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('12','12 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('13','13 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('14','14 Main Rd','State College','PA','16801','5555555555'),
    VALUES ('15','15 Main Rd','State College','PA','16801','5555555555')
);

INSERT INTO Payment_Info(
    VALUES ('0000111122223331','VISA','01/01/2021'),
    VALUES ('0000111122223332','VISA','01/01/2021'),
    VALUES ('0000111122223333','VISA','01/01/2021'),
    VALUES ('0000111122223334','VISA','01/01/2021'),
    VALUES ('0000111122223335','AMEX','01/01/2021'),
    VALUES ('0000111122223336','AMEX','01/01/2021'),
    VALUES ('0000111122223337','AMEX','01/01/2021'),
    VALUES ('0000111122223338','AMEX','01/01/2021'),
    VALUES ('0000111122223339','DISC','01/01/2021'),
    VALUES ('0000111122223310','DISC','01/01/2021'),
    VALUES ('0000111122223311','DISC','01/01/2021'),
    VALUES ('0000111122223312','MSTR','01/01/2021'),
    VALUES ('0000111122223313','MSTR','01/01/2021'),
    VALUES ('0000111122223314','MSTR','01/01/2021'),
    VALUES ('0000111122223315','MSTR','01/01/2021')
);

INSERT INTO Buyer(
    VALUES ('mikeygmikeyg'),
    VALUES ('zhucity'),
    VALUES ('gamergirl68'),
    VALUES ('LeBronJames23'),
    VALUES ('jeez24'),
    VALUES ('derrickrose'),
    VALUES ('kateupton1000'),
    VALUES ('barackobama12'),
    VALUES ('kyrieirving8'),
    VALUES ('serenawilliams')
);

INSERT INTO Seller(
    VALUES ('iggyazalea'),
    VALUES ('fettywap1738'),
    VALUES ('rubenslikk'),
    VALUES ('orderback'),
    VALUES ('Karl22')
);

INSERT INTO Supplier(
    VALUES ('orderback', 'Order Inc.', '1', '1', 'Food', 1000000)
);

INSERT INTO Person_Contact(
    VALUES ('1', '5555555555', 'mikeyg@mikeyg.mikeyg')
);

INSERT INTO Address_Info(
    VALUES ('1', '1 Main St', 'State College', 'PA', '16801')
);

INSERT INTO Rating(
    VALUES ('1', 'Average!', 'mikeygmikeyg', 'zhucity')
);

INSERT INTO Delivery(
    VALUES ('1', 0, 1),
    VALUES ('2', 1, 1)
);
    
    
INSERT INTO Sale_Item(
    VALUES ('100001','Kitkat','Chocolate')
    VALUES ('100002','Marshmallow','Candy')
    VALUES ('100003','Lollipop','Candy')
    VALUES ('100004','Hershey','Chocolate')
    VALUES ('100005','Bacon','Meat')
    VALUES ('100006','Ribs','Meat')
    VALUES ('100007','Chicken','Meat')
    VALUES ('100008','Sausage','Meat')
    VALUES ('100009','Egg','Meat')
    VALUES ('100010','Cheese','Milk')
    VALUES ('100011','Snapple','Juice')
    VALUES ('100012','Cola','Soda')
    VALUES ('100013','Cookie','Home-made')
    VALUES ('100014','Pastas','Home-made')
    VALUES ('100015','Boneless-chicken','Home-made')
    VALUES ('100016','M&M','Candy')
    VALUES ('100017','Lays','Chip')
    VALUES ('100018','Mocha','Coffee')
    VALUES ('100019','Oreo','chocolate cookie')
    VALUES ('100020','Spinach Pizza','spinach and fita')
    VALUES ('100021','Honolulu Pizza','pineapple and meat')
    VALUES ('100022','Philly Pizza','cheese steak')
    VALUES ('100023','Hawaiian Pizza','jalapeno and ham')
    VALUES ('100024','Pasta Primavera','spinach and tomatoes')
    VALUES ('100025','Italian Pasta','italian sausage')
    VALUES ('100026','Alfredo Pasta','chicken')
    VALUES ('100027','Wings','Marinated over-baked')
    VALUES ('100028','Cheesy Bread','oven-baked')
    VALUES ('100029','Candy Apples','apples with coating')
    VALUES ('100030','Champagne Cake','lovely white cake') 
    VALUES ('100031','Mummy Dogs','hotdogs')
    VALUES ('100032','Pumpkin Smoothies','pumpkin')
    VALUES ('100033','Chocolate Spiders','chocolate')
    VALUES ('100034','Pumpkin Cookies','Cookies')
    VALUES ('100035','Chip Bread Pudding','chocolaty-banana')
    VALUES ('100036','Pumpkin Seeds','sweet')
    VALUES ('100037','Peanut Butter','chocolate')
    VALUES ('100038','Lemon Cookies','taste like lemon')
    VALUES ('100039','Shortbread Cookie','chocolate-dipped')
    VALUES ('100040','Fish Dry Pot','fish and vegetables')
    VALUES ('100041','Sliced Flounder','chili sauce')
    VALUES ('100042','French Fries','new baked')
    VALUES ('100043','Cooked Scallop','dry cooked')
    VALUES ('100044','Fries Chicken Wrap','with tomatoes')
    VALUES ('100045','Brisket Sandwich','BBQ beef')
    VALUES ('100046','Curry Chicken','red curry')
    VALUES ('100047','Curry Beef','green curry')
    VALUES ('100048','Salad','tomato and cabbage')
    VALUES ('100049','red bean ice cream','red bean')
    VALUES ('100050','fried banana','with ice cream')
    
    
    );