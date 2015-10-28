CREATE TABLE Registered_User(
	username		CHAR(20),
	password		CHAR(20),
	email			CHAR(20),
	name			CHAR(20),
	dob				DATE,
	gender			CHAR,
	income			REAL,
	contact_id		CHAR(20),
	card_no			CHAR(16),
	PRIMARY KEY (username),
	FOREIGN KEY (contact_id) REFERENCES Contact_Info (contact_id),
	FOREIGN KEY (card_no) REFERENCES Payment_Info (card_no)
);

CREATE TABLE Contact_Info(
	contact_id		CHAR(20),
	street			CHAR(20),
	city			CHAR(20),
	state			CHAR(2),
	zip				CHAR(5),
	phone			CHAR(10),
	PRIMARY KEY (contact_id)
);

CREATE TABLE Payment_Info(
	card_no			CHAR(16),
	type			CHAR(10),
	exp_date		DATE,
	PRIMARY KEY (card_no)
);

CREATE TABLE Buyer(
	username		CHAR(20),
	PRIMARY KEY (username),
	FOREIGN KEY (username) REFERENCES Registered_User (username)
);

CREATE TABLE Seller(
	username		CHAR(20),
	PRIMARY KEY (username),
	FOREIGN KEY (username) REFERENCES Registered_User (username)
);

CREATE TABLE Supplier(
	username		CHAR(20),
	cname			CHAR(20),
	p_id			CHAR(20),
	address_id		CHAR(20),
	category		CHAR(20),
	revenue			REAL,
	PRIMARY KEY (username),
	FOREIGN KEY (username) REFERENCES Seller (username),
	FOREIGN KEY (p_id) REFERENCES Person_Contact(p_id),
	FOREIGN KEY (address_id) REFERENCES Address_Info(address_id)
);

CREATE TABLE Person_Contact(
	p_id			CHAR(20),
	p_phone			CHAR(10),
	p_email			CHAR(20)
	PRIMARY KEY (p_id)
);

CREATE TABLE Address_Info(
	address_id		CHAR(20),
	street			CHAR(20),
	city			CHAR(20),
	state			CHAR(2),
	zip				CHAR(5),
	PRIMARY KEY	(address_id)
);

CREATE TABLE Rating(
	rating_id		CHAR(20),
	description		CHAR(20),
	user_about		CHAR(20),
	user_write		CHAR(20),
	PRIMARY KEY (rating_id, user_about, user_write),
	FOREIGN KEY (user_about) REFERENCES Registered_Users (username)
		ON DELETE CASCADE,
	FOREIGN KEY (user_write) REFERENCES Registered_Users (username)
);

CREATE TABLE Delivery(
	del_id			CHAR(20),
	payment_receipt	BIT,
	item_receipt	BIT,
	PRIMARY KEY (del_id)
);

CREATE TABLE Item(
	item_id			CHAR(20),
	PRIMARY KEY (item_id)
);

CREATE TABLE Sale_Item(
	item_id			CHAR(20),
	item_name		CHAR(20),
	description		CHAR(20),
	price 			REAL,
	PRIMARY KEY (item_id),
	FOREIGN KEY (item_id) REFERENCES Item (item_id)
);

CREATE TABLE Auction_Item(
	item_id			CHAR(20),
	item_name		CHAR(20),
	description		CHAR(20),
	reserve_price	REAL,
	highest_bid		REAL,
	PRIMARY KEY (item_id),
	FOREIGN KEY (item_id) REFERENCES Item (item_id)
);

CREATE TABLE Sale(
	trans_date		DATE,
	item_id			CHAR(20),
	del_id			CHAR(20),
	user_buyer		CHAR(20),
	user_seller		CHAR(20),
	PRIMARY KEY (item_id, del_id, user_buyer, user_seller),
	FOREIGN KEY (item_id) REFERENCES Sale_Item (item_id),
	FOREIGN KEY (del_id) REFERENCES Delivery (del_id),
	FOREIGN KEY (user_buyer) REFERENCES Registered_Users (username),
	FOREIGN KEY (user_seller) REFERENCES Seller (username)
);

CREATE TABLE Auction(
	trans_date		DATE,
	item_id			CHAR(20),
	del_id			CHAR(20),
	user_buyer		CHAR(20),
	user_seller		CHAR(20),
	PRIMARY KEY (item_id, del_id, user_buyer, user_seller),
	FOREIGN KEY (item_id) REFERENCES Auction_Item (item_id),
	FOREIGN KEY (del_id) REFERENCES Delivery (del_id),
	FOREIGN KEY (user_buyer) REFERENCES Registered_Users (username),
	FOREIGN KEY (user_seller) REFERENCES Seller (username)
);




