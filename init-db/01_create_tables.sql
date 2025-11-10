-- Creating Group A's database
CREATE DATABASE projectdb;
---------------------------------------------------------------------------------------
/* Login and Signup Table */
CREATE TABLE loginsign (
ls_id int,
ls_t_id int,
ls_sub_id int,
user_name varchar(50),
username varchar(50),
password varchar(100),
email varchar(100),
registered_item TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT loginsign_PK PRIMARY KEY (ls_id),
CONSTRAINT t_FK FOREIGN KEY (ls_t_id) REFERENCES ticket (t_id),
CONSTRAINT sub_FK FOREIGN KEY (ls_sub_id) REFERENCES subscription (sub_id));

---------------------------------------------------------------------------------------

/* Submit and Log Items */
CREATE TABLE submitlog (
sl_id int,
item_name varchar(100),
location varchar(100),
item_type varchar(100),
item_desc varchar(200),
registered_item TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT submitlog_PK PRIMARY KEY (sl_id));

---------------------------------------------------------------------------------------

/* Search Function/Display General Item(s) */
CREATE TABLE searchdisplay (
sd_id int,
sl_id_FK int,
ls_id_FK int,
keyword varchar(100),
CONSTRAINT submitlog_PK PRIMARY KEY (sd_id),
CONSTRAINT loginsign_FK FOREIGN KEY (ls_id_FK) REFERENCES loginsign (ls_id),
CONSTRAINT submitlog_FK FOREIGN KEY (sl_id_FK) REFERENCES submitlog (sl_id));

---------------------------------------------------------------------------------------

/* Subscription Table */
CREATE TABLE subscription (
sub_id int, 
service varchar(300),
cost int,
payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT sub_PK PRIMARY KEY (sub_id));

---------------------------------------------------------------------------------------

/* Ticket Table */
CREATE TABLE ticket (
t_id int, 
confirmation varchar(50),
CONSTRAINT t_PK PRIMARY KEY (t_id));