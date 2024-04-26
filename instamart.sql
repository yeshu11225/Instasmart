DROP TABLE schedule_pickup CASCADE CONSTRAINTS;
DROP TABLE rental_agreement CASCADE CONSTRAINTS;
DROP TABLE order_detail_rental_package CASCADE CONSTRAINTS;
DROP TABLE order_detail_product CASCADE CONSTRAINTS;
DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE discount CASCADE CONSTRAINTS;
DROP TABLE rental_package_rate CASCADE CONSTRAINTS;
DROP TABLE rental_package_product CASCADE CONSTRAINTS;
DROP TABLE rental_package CASCADE CONSTRAINTS;
DROP TABLE product_rate CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE material CASCADE CONSTRAINTS;
DROP TABLE company CASCADE CONSTRAINTS;
DROP TABLE product_type CASCADE CONSTRAINTS;
DROP TABLE product_category CASCADE CONSTRAINTS;
DROP TABLE catalog_service_area CASCADE CONSTRAINTS;
DROP TABLE catalog_service_sector CASCADE CONSTRAINTS;
DROP TABLE brand CASCADE CONSTRAINTS;
DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE app_user CASCADE CONSTRAINTS;
DROP TABLE role CASCADE CONSTRAINTS;

-- Create the ROLE table
CREATE TABLE role(
  id NUMBER(11) PRIMARY KEY,
  name VARCHAR2(255) NOT NULL,
  active CHAR(1) NOT NULL
);

-- Insert data into the ROLE table

INSERT INTO role(id, name, active) VALUES (1, 'Manager', '1');
INSERT INTO role(id, name, active) VALUES (2, 'Customer', '1');

-- Create the user table
CREATE TABLE "user"(
  id NUMBER(10) GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
  first_name VARCHAR2(30),
  last_name VARCHAR2(30),
  dob DATE,
  age NUMBER(10),
  contact_no VARCHAR2(15),
  email VARCHAR2(30),
  username VARCHAR2(50),
  password VARCHAR2(50),
  role_id NUMBER(10),
  FOREIGN KEY (role_id) REFERENCES role(id)
);

-- Insert data into the user table
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(1,'David','Ross',TO_DATE('1985-02-24', 'YYYY-MM-DD'),34,'9535476863','david12@gmail.com','david12@gmail.com','david12@gmail.com',1);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(2,'Tina','Foster',TO_DATE('1973-06-08', 'YYYY-MM-DD'),46,'7845547896','tina7@gmail.com','tina7@gmail.com','tina7@gmail.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(3,'Andy','Myers',TO_DATE('1978-02-24', 'YYYY-MM-DD'),41,'8974563214','andy@redif.com','andy@redif.com','andy@redif.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(4,'Edward','Sanders',TO_DATE('1975-03-19', 'YYYY-MM-DD'),44,'9874563214','edward123@gmail.com','edward123@gmail.com','edward123@gmail.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(5,'Jasmin','Castillo',TO_DATE('1988-12-12', 'YYYY-MM-DD'),31,'7845412365','jasmin45@yahoo.com','jasmin45@yahoo.com','jasmin45@yahoo.com',1);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(6,'Eliphaz','Alvarez',TO_DATE('1984-01-14', 'YYYY-MM-DD'),35,'8523563214','eliphaz96@gmail.com','eliphaz96@gmail.com','eliphaz96@gmail.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(7,'Dylan','Ruiz',TO_DATE('1970-08-06', 'YYYY-MM-DD'),49,'7525412365','dylan@gmail.com','dylan@gmail.com','dylan@gmail.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(8,'Sean','Mendoza',TO_DATE('1968-11-11', 'YYYY-MM-DD'),51,'6589563214','sean45@gmail.com','sean45@gmail.com','sean45@gmail.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(9,'Vincent','Gray',TO_DATE('1969-05-19', 'YYYY-MM-DD'),50,'7865412365','gray@gmail.com','gray@gmail.com','gray@gmail.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(10,'Xavier','Bennet',TO_DATE('1994-12-31', 'YYYY-MM-DD'),25,'9876544381','bennet@redif.com','bennet@redif.com','bennet@redif.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(11,'Aana','James',TO_DATE('1988-01-17', 'YYYY-MM-DD'),31,'8976544381','james@gmail.com','james@gmail.com','james@gmail.com',2);
INSERT INTO "user"(id,first_name,last_name,dob,age,contact_no,email,username,password,role_id) VALUES(12,'Eadmer','Wood',TO_DATE('1993-02-15', 'YYYY-MM-DD'),26,'7896544381','wood@gmail.com','wood@gmail.com','wood@gmail.com',2);

-- Create the ADDRESS table
CREATE TABLE address(
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
  user_id NUMBER(10),
  street VARCHAR2(45) NOT NULL,
  city VARCHAR2(45) NOT NULL,
  state VARCHAR2(45) NOT NULL,
  country VARCHAR2(45) NOT NULL,
  pincode NUMBER(11) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES "user"(id)
);

-- Insert data into the ADDRESS table
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (1, '1st main', 'Bangalore', 'Karnataka', 'India', 577221);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (2, '2nd main', 'Chennai', 'Tamilnadu', 'India', 577001);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (3, '3rd main', 'Trivindrum', 'Kerala', 'India', 597201);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (4, '4th main', 'Chennai', 'Karnataka', 'India', 517208);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (5, '5th main', 'Bihar', 'Patna', 'India', 377201);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (6, '6th main', 'Bangalore', 'Karnataka', 'India', 587201);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (7, '7th main', 'Bangalore', 'Karnataka', 'India', 176201);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (8, '8th main', 'Hydrabad', 'Andra Pradesh', 'India', 174201);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (9, '9th main', 'Bangalore', 'Karnataka', 'India', 677201);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (10, '10th main', 'Bangalore', 'Karnataka', 'India', 577201);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (11, '12st main', 'Belgum', 'Karnnataka', 'India', 575631);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (12, '41nd main', 'Chennai', 'Tamil Nadu, 'India', 582501);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (13, '15 main', 'Chennai', 'Tamil Nadu', 'India', 577001);
INSERT INTO address(user_id, street, city, state, country, pincode)
VALUES (14, '45 main', 'Chennai', 'Tamil Nadu, 'India', 577001);

-- Create the brand table
CREATE TABLE brand (
  id NUMBER(11) NOT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- Insert data into the ADDRESS table

INSERT INTO brand (id,name) VALUES (1,'Bosch');
INSERT INTO brand (id,name) VALUES (2,'Samsung');
INSERT INTO brand (id,name) VALUES (3,'LG');
INSERT INTO brand (id,name) VALUES (4,'Whirlpool');
INSERT INTO brand (id,name) VALUES (5,'Onida');
INSERT INTO brand (id,name) VALUES (6,'Stanley');
INSERT INTO brand (id,name) VALUES (7,'Mintwud');
INSERT INTO brand (id,name) VALUES (8,'Philips');

-- Create the Material table
CREATE TABLE material (
  id NUMBER(11) NOT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- Insert data into the Material table

INSERT INTO material (id,name) VALUES (1,'Wood');
INSERT INTO material (id,name) VALUES (2,'Steel');
INSERT INTO material (id,name) VALUES (3,'Leather');
INSERT INTO material (id,name) VALUES (4,'Metal');
INSERT INTO material (id,name) VALUES (5,'Ceramic');
INSERT INTO material (id,name) VALUES (6,'Glass');

-- Create the Company table
CREATE TABLE company (
  id NUMBER(11) NOT NULL,
  address varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- Insert data into the Company table

INSERT INTO company (id,address,name) VALUES (1,'H-9, Block B-1, Tughlaqabad Extension, Mohan Cooperative Industrial Estate, Tughlakabad, New Delhi, Delhi 110044','Cloudtail Pvt. Ltd.');
INSERT INTO company (id,address,name) VALUES (2,'Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Maark Grand');
INSERT INTO company (id,address,name) VALUES (3,'290, Bharathiyar Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Marvel Furniture / Interiors');
INSERT INTO company (id,address,name) VALUES (4,'Shop No.24, Kattoor Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Modern Commercial Kitchen Equipments');
INSERT INTO company (id,address,name) VALUES (5,'700, Avinashi Rd, P N Palayam, Coimbatore, Tamil Nadu 641037','Royal Agencies');
INSERT INTO company (id,address,name) VALUES (6,'No. 150-151, Bharathiyar Rd, NG Narayanasamy St, Siddhapudur, New Siddhapudur, Coimbatore, Tamil Nadu 641044','Bloom Electronics Private Limited');
INSERT INTO company (id,address,name) VALUES (7,'10, Sathy Rd, C.K.Colony, B.K.R Nagar, Gandhipuram, Coimbatore, Tamil Nadu 641012','Securico Electronics I Ltd');
INSERT INTO company (id,address,name) VALUES (8,'S-26, 2nd Floor, No 61-71, Brooke Fields Plaza, Dr Krishnasamy Mudaliyar Rd, Coimbatore, Tamil Nadu 641001','Reliance Digital');

-- Create the Catalog _service_sector table
CREATE TABLE catalog_service_sector (
  id NUMBER(11) NOT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);
-- Insert data into the Catalog _service_sector table

INSERT INTO catalog_service_sector (id,name) VALUES (1,'Home');
INSERT INTO catalog_service_sector (id,name) VALUES (2,'Office');

-- Create the catalog_service_area table
CREATE TABLE catalog_service_area (
  id NUMBER(11) PRIMARY KEY,
  category VARCHAR2(255),
  catalog_service_sector_id NUMBER(11),
  FOREIGN KEY (catalog_service_sector_id) REFERENCES catalog_service_sector(id)
);

-- Insert data into the Catalog _service_area table
INSERT INTO catalog_service_area (id, category, catalog_service_sector_id) VALUES (1, 'Living Room', 1);
INSERT INTO catalog_service_area (id, category, catalog_service_sector_id) VALUES (2, 'Conference Room', 2);
INSERT INTO catalog_service_area (id, category, catalog_service_sector_id) VALUES (3, 'Private Office', 2);
INSERT INTO catalog_service_area (id, category, catalog_service_sector_id) VALUES (4, 'dining Room', 1);
INSERT INTO catalog_service_area (id, category, catalog_service_sector_id) VALUES (5, 'Laundry Room', 1);
INSERT INTO catalog_service_area (id, category, catalog_service_sector_id) VALUES (6, 'Bed Room', 1);
INSERT INTO catalog_service_area (id, category, catalog_service_sector_id) VALUES (7, 'Kitchen', 1);


-- Create product_category table
CREATE TABLE product_category (
  id NUMBER(11) PRIMARY KEY,
  category VARCHAR2(255),
  catalog_service_area_id NUMBER(11),
  FOREIGN KEY (catalog_service_area_id) REFERENCES catalog_service_area(id)
);

-- Insert data into product_category table
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (1, 'Furniture', 1);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (2, 'Electronics', 1);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (3, 'Furniture', 4);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (4, 'Electronics', 7);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (5, 'Furniture', 7);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (6, 'Electronics', 2);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (7, 'Furniture', 2);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (8, 'Electronics', 6);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (9, 'Furniture', 6);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (10, 'Appliances', 1);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (11, 'Appliances', 4);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (12, 'Appliances', 7);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (13, 'Appliances', 2);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (15, 'Appliances', 6);
INSERT INTO product_category (id, category, catalog_service_area_id) VALUES (16, 'Appliances', 6);

-- Create product_type table
CREATE TABLE product_type (
  id NUMBER(11) PRIMARY KEY,
  type VARCHAR2(255),
  product_category_id NUMBER(11),
  FOREIGN KEY (product_category_id) REFERENCES product_category(id)
);

-- Insert data into product_type table
INSERT INTO product_type (id, type, product_category_id) VALUES (1, 'Chair', 1);
INSERT INTO product_type (id, type, product_category_id) VALUES (2, 'TV', 2);
INSERT INTO product_type (id,type, product_category_id) VALUES (3,'Sofa',1);
INSERT INTO product_type (id,type, product_category_id) VALUES (4,'Washing Machine',16);
INSERT INTO product_type (id,type, product_category_id) VALUES (5,'Table',1);
INSERT INTO product_type (id,type, product_category_id) VALUES (6,'Bed',9);
INSERT INTO product_type (id,type, product_category_id) VALUES (7,'Oven',12);
INSERT INTO product_type (id,type, product_category_id) VALUES (8,'Desk',7);
INSERT INTO product_type (id,type, product_category_id) VALUES (9,'Mic',6);
INSERT INTO product_type (id,type, product_category_id) VALUES (10,'Laptop',6);
INSERT INTO product_type (id,type, product_category_id) VALUES (11,'Dinning Table',3);


-- Create product table
CREATE TABLE product (
  id NUMBER(11) PRIMARY KEY,
  color VARCHAR2(255),
  dimensions VARCHAR2(255),
  is_available CHAR(1),
  is_visible CHAR(1),
  name VARCHAR2(255),
  brand_id NUMBER(11),
  catalog_service_area_id NUMBER(11),
  catalog_service_sector_id NUMBER(11),
  company_id NUMBER(11),
  material_id NUMBER(11),
  product_category_id NUMBER(11),
  product_type_id NUMBER(11),
  city VARCHAR2(255),
  image_url VARCHAR2(255),
  FOREIGN KEY (brand_id) REFERENCES brand(id),
  FOREIGN KEY (catalog_service_area_id) REFERENCES catalog_service_area(id),
  FOREIGN KEY (catalog_service_sector_id) REFERENCES catalog_service_sector(id),
  FOREIGN KEY (company_id) REFERENCES company(id),
  FOREIGN KEY (material_id) REFERENCES material(id),
  FOREIGN KEY (product_category_id) REFERENCES product_category(id),
  FOREIGN KEY (product_type_id) REFERENCES product_type(id)
);

-- Insert data into product table
INSERT INTO product (id, color, dimensions, is_available, is_visible, name, brand_id, catalog_service_area_id, catalog_service_sector_id, company_id, material_id, product_category_id, product_type_id, city, image_url) VALUES (1, 'Brown', '121 X 121', '1', '1', 'Designer chair', 1, 1, 1, 1, 1, 1, 1, 'Bangalore', 'resources/images/products/p1.png');
INSERT INTO product (id, color, dimensions, is_available, is_visible, name, brand_id, catalog_service_area_id, catalog_service_sector_id, company_id, material_id, product_category_id, product_type_id, city, image_url) VALUES (2, 'Red', '121 X 121', '1', '1', 'LED TV', 2, 1, 1, 2, 2, 2, 2, 'Bangalore', 'resources/images/products/p2.png');
INSERT INTO product (id,color, dimensions,is_available,is_visible, name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id,product_category_id,product_type_id,city,image_url) VALUES (3,'Blue','90 X 60 cm','1','1','Bosch 6.5Kg Washing Machines',1,5,1,2,2,16,4,'Chennai','resources/images/products/p3.png');
INSERT INTO product (id,color, dimensions,is_available,is_visible, name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id, product_category_id,product_type_id,city,image_url) VALUES (4,'Dark Brown','H 29 x W 57 x D 33','1','1','Momoko 6 Seater Dining Set',6,4,1,6,2,3,11,'Trivindrum','resources/images/products/p4.png');
INSERT INTO product (id,color, dimensions,is_available,is_visible, name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id, product_category_id,product_type_id,city,image_url) VALUES (5,'white','60 x 78','1','1','Takai Queen Size Beds',2,6,1,4,2,9,6,'Hydrabad','resources/images/products/p5.png');
INSERT INTO product (id,color,dimensions,is_available,is_visible, name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id, product_category_id,product_type_id,city,image_url) VALUES (6,'Black','52 x 40.2 x 35.6 cm','1','1','Philips 25-Litre Digital Oven',8,7,1,4,2,12,7,'Chennai','resources/images/products/p6.png');
INSERT INTO product (id,color, dimensions,is_available,is_visible, name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id, product_category_id,product_type_id,city,image_url) VALUES (7,'Brown','80 cm (w)  x 192 cm (h)','1','0','Ebony Wardrobe',8,6,1,3,1,9,6,'Chennai','resources/images/products/p7.png');
INSERT INTO product (id,color, dimensions,is_available,is_visible, name,brand_id,catalog_service_area_id,catalog_service_sector_id,company_id,material_id, product_category_id,product_type_id,city,image_url) VALUES (8,'Black','14 inch','0','1','Lenovo Ideapad Core i3',8,2,2,8,2,6,10,'Chennai','resources/images/products/p8.png');

--Create the product rate table
CREATE TABLE product_rate (
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  end_date TIMESTAMP DEFAULT NULL,
  rate VARCHAR2(255) DEFAULT NULL,
  start_date TIMESTAMP DEFAULT NULL,
  product_id NUMBER(11),
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) REFERENCES product (id)
);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (1, NULL, '1500', TO_TIMESTAMP('2019-10-22 09:37:36', 'YYYY-MM-DD HH24:MI:SS'), 1);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (2, NULL, '1540', TO_TIMESTAMP('2019-10-22 11:11:11', 'YYYY-MM-DD HH24:MI:SS'), 2);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (3, NULL, '15000.0', TO_TIMESTAMP('2019-10-22 12:13:45', 'YYYY-MM-DD HH24:MI:SS'), 3);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (4, NULL, '28000.0', TO_TIMESTAMP('2019-10-22 12:20:34', 'YYYY-MM-DD HH24:MI:SS'), 4);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (5, NULL, '12500.0', TO_TIMESTAMP('2019-10-22 12:27:58', 'YYYY-MM-DD HH24:MI:SS'), 5);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (6, NULL, '6000.0', TO_TIMESTAMP('2019-10-22 12:35:30', 'YYYY-MM-DD HH24:MI:SS'), 6);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (7, NULL, '7000.0', TO_TIMESTAMP('2019-10-22 12:35:30', 'YYYY-MM-DD HH24:MI:SS'), 7);

INSERT INTO product_rate (id, end_date, rate, start_date, product_id) 
VALUES (8, NULL, '27000.0', TO_TIMESTAMP('2019-10-22 12:35:30', 'YYYY-MM-DD HH24:MI:SS'), 8);

--Create the rental_package table
CREATE TABLE rental_package (
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  name VARCHAR2(25) DEFAULT NULL,
  is_visible NUMBER(1) NOT NULL,
  is_available NUMBER(1) NOT NULL,
  created_date DATE NOT NULL,
  city VARCHAR2(50) NOT NULL,
  image_url VARCHAR2(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

--Insert in the rental_package table
INSERT INTO rental_package (id, name, is_visible, is_available, created_date, city, image_url) 
VALUES (1, 'Pacakge1', 1, 1, TO_DATE('2018-11-11', 'YYYY-MM-DD'), 'Bengaluru', 'resources/images/packages/r1.png');

INSERT INTO rental_package (id, name, is_visible, is_available, created_date, city, image_url) 
VALUES (2, 'Pacakge2', 1, 1, TO_DATE('2018-08-25', 'YYYY-MM-DD'), 'Chennai', 'resources/images/packages/r2.png');

INSERT INTO rental_package (id, name, is_visible, is_available, created_date, city, image_url) 
VALUES (3, 'Pacakge3', 1, 1, TO_DATE('2018-08-25', 'YYYY-MM-DD'), 'Chennai', 'resources/images/packages/r3.png');


CREATE TABLE rental_package_product (
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  package_id NUMBER(11) NOT NULL,
  product_id NUMBER(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (package_id) REFERENCES rental_package (id),
  FOREIGN KEY (product_id) REFERENCES product (id)
);


INSERT INTO rental_package_product(id,package_id,product_id)values(1,1,1);
INSERT INTO rental_package_product(id,package_id,product_id)values(2,1,3);
INSERT INTO rental_package_product(id,package_id,product_id)values(3,1,6);
INSERT INTO rental_package_product(id,package_id,product_id)values(4,2,2);
INSERT INTO rental_package_product(id,package_id,product_id)values(5,2,4);
INSERT INTO rental_package_product(id,package_id,product_id)values(6,2,5);
INSERT INTO rental_package_product(id,package_id,product_id)values(7,3,7);
INSERT INTO rental_package_product(id,package_id,product_id)values(8,3,8);


CREATE TABLE order_detail (
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  user_id NUMBER(11) NOT NULL,
  name VARCHAR2(255) NOT NULL,
  contact_no VARCHAR2(255) NOT NULL,
  ordered_date DATE NOT NULL,
  delivery_date DATE NOT NULL,
  delivery_time VARCHAR2(255) NOT NULL,
  address_id NUMBER(11) NOT NULL,
  cost_per_month NUMBER(11) NOT NULL,
  PRIMARY KEY(id),
  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES "user"(id),
  CONSTRAINT fk_address FOREIGN KEY (address_id) REFERENCES address(id)
);


INSERT INTO order_detail (id, user_id, name, contact_no, ordered_date, delivery_date, delivery_time, address_id, cost_per_month) VALUES (1, 2, 'Tina', '7845547896', TO_DATE('2020-03-20', 'YYYY-MM-DD'), TO_DATE('2020-03-31', 'YYYY-MM-DD'), '10.00 AM', 2, 2000);
INSERT INTO order_detail (id, user_id, name, contact_no, ordered_date, delivery_date, delivery_time, address_id, cost_per_month) VALUES (2, 3, 'Andy', '8974563214', TO_DATE('2020-04-16', 'YYYY-MM-DD'), TO_DATE('2020-04-21', 'YYYY-MM-DD'), '12.30 PM', 2, 3000);
INSERT INTO order_detail (id, user_id, name, contact_no, ordered_date, delivery_date, delivery_time, address_id, cost_per_month) VALUES (3, 5, 'Jasmin', '7845412365', TO_DATE('2020-03-02', 'YYYY-MM-DD'), TO_DATE('2020-03-11', 'YYYY-MM-DD'), '6.00 PM', 5, 2500);
INSERT INTO order_detail (id, user_id, name, contact_no, ordered_date, delivery_date, delivery_time, address_id, cost_per_month) VALUES (4, 4, 'Edward', '9874563214', TO_DATE('2019-11-10', 'YYYY-MM-DD'), TO_DATE('2020-03-18', 'YYYY-MM-DD'), '4.50 PM', 4, 5000);
INSERT INTO order_detail (id, user_id, name, contact_no, ordered_date, delivery_date, delivery_time, address_id, cost_per_month) VALUES (5, 2, 'kiran', '2589631470', TO_DATE('2019-08-14', 'YYYY-MM-DD'), TO_DATE('2019-08-17', 'YYYY-MM-DD'), '2:45 PM', 2, 74080);

CREATE TABLE order_detail_product (
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  order_detail_id NUMBER(11) NOT NULL,
  product_id NUMBER(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (order_detail_id) REFERENCES order_detail (id),
  FOREIGN KEY (product_id) REFERENCES product (id)
);

-- Inserting data into order_detail_product
INSERT INTO order_detail_product (id, order_detail_id, product_id) VALUES (1, 1, 3);
INSERT INTO order_detail_product (id, order_detail_id, product_id) VALUES (2, 3, 5);
INSERT INTO order_detail_product (id, order_detail_id, product_id) VALUES (3, 6, 3);
INSERT INTO order_detail_product (id, order_detail_id, product_id) VALUES (4, 8, 3);
INSERT INTO order_detail_product (id, order_detail_id, product_id) VALUES (5, 8, 6);


CREATE TABLE order_detail_rental_package (
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  order_detail_id NUMBER(11) NOT NULL,
  package_id NUMBER(11) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_order_detail FOREIGN KEY (order_detail_id) REFERENCES order_detail(id),
  CONSTRAINT fk_rental_package FOREIGN KEY (package_id) REFERENCES rental_package(id)
);

INSERT INTO order_detail_rental_package ( id, order_detail_id, package_id)
VALUES (1, 2, 1);

INSERT INTO order_detail_rental_package ( id, order_detail_id, package_id)
VALUES (2, 4, 2);

INSERT INTO order_detail_rental_package ( id, order_detail_id, package_id)
VALUES (3, 5, 2);

INSERT INTO order_detail_rental_package ( id, order_detail_id, package_id)
VALUES (4, 5, 3);

INSERT INTO order_detail_rental_package ( id, order_detail_id, package_id)
VALUES (5, 7, 2);

INSERT INTO order_detail_rental_package ( id, order_detail_id, package_id)
VALUES (6, 7, 3);


CREATE TABLE discount (
  id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
  tenure NUMBER(11) NOT NULL,
  percentage NUMBER(11) NOT NULL,
  PRIMARY KEY(id)
);


INSERT INTO discount (id,tenure,percentage)values(1,6,4);
INSERT INTO discount (id,tenure,percentage)values(2,9, 4);
INSERT INTO discount (id,tenure,percentage)values(3,12,6);

CREATE TABLE rental_agreement
(
    id NUMBER(11) GENERATED BY DEFAULT ON NULL AS IDENTITY,
    order_detail_id NUMBER(11) NOT NULL,
    agreement_number VARCHAR2(255) NOT NULL,
    company_id NUMBER(11) NOT NULL,
    tenure NUMBER(11) NOT NULL,
    booked_date DATE NOT NULL,
    delivery_date DATE NOT NULL,
    renewal_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    discount_id NUMBER(11) NOT NULL,
    total_cost NUMBER(11) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (order_detail_id) REFERENCES order_detail(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id),
    FOREIGN KEY (company_id) REFERENCES company(id)
);


INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(1, 5, 'INS5U2V0', 1, 9, TO_DATE('2019-08-14', 'YYYY-MM-DD'), TO_DATE('2019-08-17', 'YYYY-MM-DD'), TO_DATE('2020-05-18', 'YYYY-MM-DD'), TO_DATE('2020-05-17', 'YYYY-MM-DD'), 2, 626717);

INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(2, 6, 'INS6U2V0', 1, 6, TO_DATE('2019-05-12', 'YYYY-MM-DD'), TO_DATE('2019-05-13', 'YYYY-MM-DD'), TO_DATE('2019-11-14', 'YYYY-MM-DD'), TO_DATE('2019-11-13', 'YYYY-MM-DD'), 1, 86400);

INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(3, 7, 'INS7U3V0', 1, 12, TO_DATE('2019-08-12', 'YYYY-MM-DD'), TO_DATE('2019-08-13', 'YYYY-MM-DD'), TO_DATE('2020-08-14', 'YYYY-MM-DD'), TO_DATE('2020-08-13', 'YYYY-MM-DD'), 3, 800064);

INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(4, 8, 'INS8U3V0', 1, 9, TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_DATE('2020-03-13', 'YYYY-MM-DD'), 2, 177660);

INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(5, 1, 'INS1U2V0', 1, 6, TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_DATE('2020-03-13', 'YYYY-MM-DD'), 2, 157660);

INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(6, 2, 'INS2U3V0', 1, 9, TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_DATE('2020-03-13', 'YYYY-MM-DD'), 2, 167660);

INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(7, 3, 'INS3U5V0', 1, 12, TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_DATE('2020-03-13', 'YYYY-MM-DD'), 2, 147660);

INSERT INTO rental_agreement (id, order_detail_id, agreement_number, company_id, tenure, booked_date, delivery_date, renewal_date, expiry_date, discount_id, total_cost) 
VALUES 
(8, 4, 'INS4U4V0', 1, 9, TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2019-06-13', 'YYYY-MM-DD'), TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_DATE('2020-03-13', 'YYYY-MM-DD'), 2, 189000);






























