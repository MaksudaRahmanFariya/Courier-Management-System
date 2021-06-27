DROP TABLE booked_customer;
DROP TABLE booked_percel;
DROP TABLE table_payment;
DROP TABLE table_officers;
DROP TABLE courier_track;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE booked_customer 
(
  sid int(30) NOT NULL,
  s_name varchar(30) NOT NULL,
  s_address varchar(50) NOT NULL,
  s_phone varchar(12) NOT NULL,
  delivary_branch varchar(50) NOT NULL,
  rev_name varchar(30) NOT NULL,
  rev_phone varchar(30) NOT NULL,
  booked_date varchar(10) NOT NULL,
  p_date varchar(10) 
  );




CREATE TABLE booked_parcel(
sid int(30) NOT NULL,
p_code varchar(12) NOT NULL,
parcel_information varchar(100) NOT NULL,
quantity int(12) NOT NULL,
weight varchar(10)
);


CREATE TABLE table_payment(

sid int(30) NOT NULL,
p_code varchar(12) NOT NULL,
booking_charge varchar(20) NOT NULL,
service_charge varchar(10) NOT NULL,
total_charge varchar(30) NOT NULL,
condition varchar(10) NOT NULL
);


CREATE TABLE table_officers(
  id int(14) NOT NULL,
  officer_name varchar(40) NOT NULL,
  off_pwd varchar(40) NOT NULL,
  off_address varchar(250) NOT NULL,
  email varchar(100) NOT NULL,
  ph_no varchar(12) NOT NULL,
  office_time varchar(100) NOT NULL
);


CREATE TABLE courier_track(
  p_code varchar(12) NOT NULL,
  current_city varchar(100) NOT NULL,
  status varchar(30) NOT NULL,
  comments varchar(255) NOT NULL,
  bk_date date NOT NULL
);

/*inserting values into table booked_customer*/

INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (1,'Kuddus','Barishal','01527838990','Tongi,Gazipur','kamal','01567292382','01-01-21','2-01-21');
INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (2,'Abul','Gazipur','0123789433','Rajshahi,kazla','Peter','01922111905','01-01-21','01-01-21');
INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (3,'Babul','Khulna,Fulbarigate','0145387299','Dhaka,Mirpur-10','Mokbul','0127849088','03-02-21','5-02-21');
INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (4,'Yabul','Rajshahi,Talaimari','0167839022','Dhaka,Mirpur-12','Toasfia','0134589022','05-02-21','7-02-21');
INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (5,'Abbas','Satkhira','01527458990','Tongi,Gazipur','Pitbul','01567378982','06-02-21','6-02-21');
INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (6,'Alomgir','Mymensingh,Durgapur','012903789','Rajshahi,kazla','Bekul','01922109005','07-02-21','10-02-21');
INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (7,'Babul','Khulna,Fulbarigate','0145387890','Dhaka,Mirpur-10','Mokbul','0127849088','10-02-21','15-02-21');
INSERT INTO booked_customer(sid,s_name,s_address,s_phone,delivary_branch,rev_name,rev_phone,booked_date,p_date) VALUES (8,'Yabul','Rajshahi,Talaimari','0167839022','Dhaka,Mirpur-12','Toasfia','0134589022','15-02-21','17-02-21');



/* inserting into table booked_parcel*/
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(1,'MMRTX2','1 carton mint colgate',1,'5kg');
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(2,'XYT456','cotton bag',2,'2kg');
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(3,'RRTE34','Glass set',1,'12kg');
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(4,'WERYU8','Fruit carton',2,'4kg');
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(5,'MMWTX2','Box',1,'3kg');
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(6,'AYT556','Bag',2,'2kg');
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(7,'BRTF34','Mobile carton',1,'10kg');
INSERT INTO booked_parcel(sid,p_code,parcel_information,quantity,weight)VALUES(8,'WE8YU8','cotton bag',2,'2kg');


/* inserting into table_payment*/

INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(1,'MMRTX2','20/-','80/-','100/-','Paid');
INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(2,'XYT456','20/-','50/-','70/-','Unpaid');
INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(3,'RRTE34','50/-','100/-','150/-','Unpaid');
INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(4,'WERYU8','30/-','50/-','80/-','Unpaid');
INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(5,'MMWTX2','20/-','70/-','90/-','Paid');
INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(6,'AYT456','40/-','50/-','90/-','Unpaid');
INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(7,'BRTF34','50/-','100/-','150/-','Unpaid');
INSERT INTO table_payment(sid,p_code,booking_charge,service_charge,total_charge,condition)VALUES(8,'WE8YU8','30/-','50/-','80/-','Unpaid');

/*inserting into table_officers*/
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(1,'Saleem','sm123','Barishal','sm@gmail.com','0128945005','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(2,'Karim Khan','km183','Khulna,Fulbarigate','km@gmail.com','02345179003','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(3,'Salman Khan','sl193','Mymensingh,Durgapur','sl@gmail.com','01267490000','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(4,'Sakib Khan','sk129','Rajshahi,Kazla','sk@gmail.com','0167894500','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(5,'Kuddus khan','ku127','Dhaka,Mirpur-10','kuddus@gmail.com','0147894599','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(6,'Jolil','jo12o','Dhaka,Mirpur-12','jo@gmail.com','01783947584','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(7,'Kholil','Kh111','Gazipur','kh@gmail.com','012********8','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(8,'Kolim','ki156','Tongi,Gazipur','kolim@gmail.com','0156789888','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(9,'DDD','DD124','Rajshahi,Talaimari','dd@gmail.com','0156789400','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(10,'Moksed','Mk120','Satkhira','Moksed@gmail.com','0178907899','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(11,'Pitbul Khan','pk133','Dhaka,Uttora','sm@gmail.com','0976000000','10.00 am - 9.00 pm');
INSERT INTO table_officers(id,officer_name,off_pwd,off_address,email,ph_no,office_time)VALUES(12,'Mofiz','MO923','Mohammadour,Dhaka','Mofiz@gmail.com','0158990667','10.00 am - 9.00 pm');


/*inserting into courier_track*/
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('MMRTX2','Dhaka,uttora','In Transit','','01-01-21');
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('XYT456','Dhaka,Mirpur-10','Delayed','Due to Rain','01-01-21');
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('RRTE34','Dhaka,Mirpur-10','Completed','','03-02-21');
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('WERYU8','Dhaka,Mirpur-12','Completed','','05-02-21');
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('MMWTX2','Dhaka,Mirpur-10','Delayed','Due to Rain','06-01-21');
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('AYT456','Tongi,Gazipur','Delayed','Due to Traffic jam','07-02-21');
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('BRTF34','Dhaka,Mirpur-10','Completed','','10-01-21');
INSERT INTO courier_track(p_code,current_city,status,comments,bk_date)VALUES('WE8YU8','Tongi,Gazipur','Completed','','12-02-21');


ALTER TABLE booked_customer
                     ADD PRIMARY KEY(sid);



ALTER TABLE table_officers
                    ADD PRIMARY KEY(id);

ALTER TABLE booked_customer
  MODIFY sid int(30) NOT NULL AUTO_INCREMENT;

ALTER TABLE table_officers
  MODIFY id int(30) NOT NULL AUTO_INCREMENT;

SELECT * FROM booked_customer;
SELECT * FROM booked_parcel;
SELECT * FROM table_payment;
SELECT * FROM table_officers;
SELECT * FROM courier_track;


SELECT bc.sid , bc.delivary_branch,tp.condition,tp.p_code FROM booked_customer bc,table_payment tp
            WHERE bc.sid = tp.sid and  tp.condition = 'Unpaid';
 
SELECT bc.sid,bp.p_code ,ct.status,ct.bk_date,ct.p_code,bp.parcel_information FROM booked_customer bc , booked_parcel bp,courier_track ct
            WHERE ct.p_code = bp.p_code and  ct.status = 'Completed';



SELECT bc.sid , bc.s_name ,bp.parcel_information FROM booked_customer bc, booked_parcel bp
           WHERE (bc.sid = bp.sid) and (bp.weight<='10kg');


SELECT bc.sid , bc.s_name , tof.officer_name FROM booked_customer bc,table_officers tof
           WHERE bc.delivary_branch = tof.off_address;

SELECT tp.sid , tp.condition 
FROM table_payment tp
WHERE tp.total_charge >'50/-'
UNION ALL
SELECT tp.sid , tp.condition 
FROM table_payment tp
WHERE tp.total_charge<='150/-';

SELECT tp.sid , tp.condition ,tp.p_code
FROM table_payment tp
WHERE tp.total_charge >'50/-'
UNION 
SELECT tp.sid , tp.condition ,tp.p_code
FROM table_payment tp
WHERE tp.total_charge<='150/-';

SELECT tp.sid, tp.p_code,tp.total_charge
FROM table_payment tp 
WHERE tp.total_charge<'100/-'
INTERSECT
SELECT tp.sid, tp.p_code,tp.total_charge
FROM table_payment tp 
WHERE tp.total_charge<='150/-';

SELECT tp.sid, tp.p_code,tp.total_charge
FROM table_payment tp 
WHERE tp.total_charge<'100/-'
MINUS
SELECT tp.sid, tp.p_code,tp.total_charge
FROM table_payment tp 
WHERE tp.total_charge<='150/-';




SELECT  bc.sid,bc.s_name,tof.off_address
  FROM  booked_customer bc  JOIN table_officers tof
  ON(bc.delivary_branch = tof.off_address);


SELECT bc.sid,tp.total_charge,tp.condition
FROM booked_customer bc CROSS JOIN table_payment tp; 

SELECT bc.sid,bc.s_name,bc.booked_date,tof.officer_name FROM booked_customer bc LEFT OUTER JOIN table_officers tof
  ON bc.delivary_branch=tof.off_address;

SELECT bc.sid,bc.s_name,bc.booked_date FROM booked_customer bc RIGHT OUTER JOIN table_officers tof
  ON bc.delivary_branch=tof.off_address;

SELECT bc.sid,bc.s_name,bc.booked_date FROM booked_customer bc FULL OUTER JOIN table_officers tof
  ON bc.delivary_branch=tof.off_address;


SELECT bc.sid,bc.s_name,bc.rev_name, tp.condition,ct.comments FROM booked_customer bc , table_payment tp , courier_track ct
            WHERE ct.status!='Completed' and tp.condition = 'Paid';

SELECT tof.officer_name,tof.ph_no,tof.email,tof.office_time,ct.bk_date FROM table_officers tof,courier_track ct
     WHERE ct.status!='Completed' and tof.off_address = ct.current_city;

COMMIT;