
drop table user_t;

drop sequence seq_user;

CREATE TABLE user_t(
username VARCHAR2(20) NOT NULL,
userid VARCHAR2(100) NOT NULL,
pwd VARCHAR2(100)NOT NULL,
email VARCHAR2(200) NOT NULL,
phone VARCHAR2(20) NOT NULL,
admin NUMBER(1) DEFAULT 0,
PRIMARY KEY(userid)
);




drop table member_t cascade constraints;

drop sequence seq_member;

create sequence seq_member;

CREATE TABLE member_t(
membername VARCHAR2(100)NOT NULL,
memberid VARCHAR2(100) NOT NULL,
memberpwd VARCHAR2(100) NOT NULL,
email VARCHAR2(200) NOT NULL,
memberJURIRNO VARCHAR2(200) NOT NULL,
photo VARCHAR2(1000) NOT NULL,
phone VARCHAR2(20) NOT NULL,
PRIMARY KEY(memberid));


drop table cafe_r cascade constraints;

drop sequence seq_cafe;

create sequence seq_cafe;


CREATE TABLE cafe_r(
bno NUMBER(10,0),
memberid VARCHAR2(100) NOT NULL,
cafename VARCHAR2(50)NOT NULL,
address VARCHAR2(1000)NOT NULL,
phone VARCHAR2(50) NOT NULL,
cafeinfo VARCHAR2(1000),
image VARCHAR2(1000),
price VARCHAR2(50),
car VARCHAR2(20),
opentime VARCHAR2(50) NOT NULL,
closetime VARCHAR2(50) NOT NULL,
dayoff VARCHAR2(50),
site VARCHAR2(500),
upcount NUMBER(10,0) default 0,
jjimcount NUMBER(10,0) default 0,
regDate date default sysdate,
updateDate date default sysdate,
CONSTRAINT fk_cmid foreign key(memberid) references member_t (memberid),
PRIMARY KEY(bno));


drop table hashtag_t;

drop sequence seq_hashtag;

create sequence seq_hashtag;

CREATE TABLE hashtag_t(
hno NUMBER(10,0),
bno NUMBER(10,0),
cafename VARCHAR2(50)NOT NULL,
hashtagname VARCHAR2(100) NOT NULL,
CONSTRAINT fk_hbno foreign key(bno) references cafe_r (bno),
PRIMARY KEY(hno)
);


drop table menu;

drop sequence seq_menu;

create sequence seq_menu;

CREATE TABLE menu (
menuno NUMBER(10,0),
bno NUMBER(10,0),
cafename VARCHAR2(50)NOT NULL,
menun1 VARCHAR2(30),
menun2 VARCHAR2(30),
menun3 VARCHAR2(30),
menun4 VARCHAR2(30),
menup1 int,
menup2 int,
menup3 int,
menup4 int,
CONSTRAINT fk_mbno foreign key(bno) references cafe_r (bno),
PRIMARY KEY(menuno)
);


drop table review;

drop sequence seq_review;

create sequence seq_review;

CREATE TABLE review(
rno NUMBER(10,0),
userid VARCHAR2(100) NOT NULL,
bno NUMBER(10,0),
rpwd VARCHAR2(100) NOT NULL,
replygrade int NOT NULL,
reply VARCHAR2(100) NOT NULL,
replydate DATE DEFAULT sysdate,
updatedate DATE DEFAULT sysdate,
CONSTRAINT fk_ruid foreign key(userid) references user_t (userid),
PRIMARY KEY(rno)
);


drop table jjim;

drop sequence seq_jjim;

create sequence seq_jjim;

CREATE TABLE jjim(
jno NUMBER(10,0),
userid VARCHAR2(100) NOT NULL,
bno NUMBER(10,0),
CONSTRAINT fk_uid foreign key(userid) references user_t (userid),
CONSTRAINT fk_jbno foreign key(bno) references cafe_r (bno),
PRIMARY KEY(jno)
);


drop table admin_t;

drop sequence seq_admin;

create sequence seq_admin;

CREATE TABLE admin_t(
adminno VARCHAR2(5) NOT NULL,
adminid VARCHAR2(100) NOT NULL,
adminpwd VARCHAR2(100) NOT NULL,
PRIMARY KEY(adminno)
);

insert into user_t(username, userid, pwd, email, phone) values('test', 'testid', '1234', 'test@test.com', '01012341234');
insert into user_t(username, userid, pwd, email, phone) values('test', 'testid2', '1234', 'test@test.com', '01012341234');
insert into user_t(username, userid, pwd, email, phone) values('test', 'testid3', '1234', 'test@test.com', '01012341234');
insert into user_t(username, userid, pwd, email, phone) values('test', 'testid4', '1234', 'test@test.com', '01012341234');
insert into user_t(username, userid, pwd, email, phone) values('test', 'testid5', '1234', 'test@test.com', '01012341234');
insert into user_t(username, userid, pwd, email, phone) values('test', 'testid6', '1234', 'test@test.com', '01012341234');

insert into member_t values('tester', 'testid', 'testpwd', 'test@test.com', 'testtest', 'test', '01012345678');
insert into member_t values('tester2', 'testid2', 'testpwd2', 'test@test.com', 'testtest', 'test', '01012345678');


commit;