create database travelDB;

use travelDB;

#상품 리스트
drop table goodslist;
create table if not exists goodslist (
   gId int auto_increment,
   gName varchar(50) not null unique,
   gPrice int,
   gDescription varchar(50),
   gCategory varchar(10) not null,
   gStock int,
   gImg varchar(20),
	primary key(gId)
)default charset=utf8mb4;

INSERT INTO goodslist VALUES(null,'머그컵',15000,'창원 머그컵','잡화',100,'mugcup.jpg');
INSERT INTO goodslist VALUES(null,'텀블러',20000,'창원 텀블러','잡화',100,'tumbler.jpg');
insert into goodslist values(null,'팽나무엽서',1000,'사진 엽서','잡화',1000,'post1.jpg');
INSERT INTO goodslist VALUES(null,'벚꽃엽서',1000,'사진 엽서','잡화',1000,'post2.jpg');

USE traveldb;

# 회원 정보
create table if not exists member ( 
    id varchar(10) not null,
    password varchar(10) not null,
    name varchar(10) not null,
    gender varchar(4),
    birth  varchar(10),
    mail  varchar(30),
    phone varchar(20),
    address varchar(90),
    regist_day varchar(50),
    admincheck boolean,
    primary key(id) 
) default CHARSET=utf8;
INSERT INTO member VALUES('aaaa','aaaa','홍길동','여','20020202','abc@avc.adf','01011112222','창원','20220914',1); # 관리자
INSERT INTO member VALUES('abc','aaaa','홍길동','여','20020202','abc@avc.adf','01011112222','창원','20220914',0);
INSERT INTO member VALUES('admin','aaaa','홍길동','여','20020202','abc@avc.adf','01011112222','창원','20220914',0);

#게시판
drop table board;
create table board(
   num int not null auto_increment,
   id varchar(10) not null,
   title varchar(50) not null,
   bdate date,
   content varchar(200),
   hit int,
   img varchar(20),
   PRIMARY KEY (num)
);

insert into board value (null, 'aaaa','안녕하세요!','2022-09-30','반갑습니다.',null,'Desert.jpg');

# 관광 장소
drop table spots;
CREATE TABLE IF NOT EXISTS spots(
   aid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(20) not null,
   location  varcharacter(30) not null,
   description TEXT,
	number VARCHAR(20),
   time VARCHAR(20),
   img VARCHAR(20)
);

insert into spots value (null,'창원의집', '경상남도 창원시 의창구 사림로16번길 59 (사림동)', '도심 속 창원시의 역사가 살아 숨 쉬는 공간','055)714-7646','9:00~18:00','changwonshouse.jpg');
insert into spots (aid,name,location,img)value(null,'창원의 집','경상남도 창원시 의창구 사림로16번길 59 (사림동)','changwonshouse.jpg');
insert into spots (aid,name,location,number,img)value(null,'야구장','경상남도 창원시 마산회원구 삼호로 63','055-263-8044','baseball.jpg');

# 주문 리스트
drop table orderlist;
create table if not exists orderlist (
   orderNum int not null auto_increment,
   orderAt datetime not null ,
   getNum integer,
   userId varchar(20),
   buygoods varchar(20),
   primary key(orderNum)
)default charset=utf8mb4;

# 주소록 리스트
drop table address;
create table if not exists address (
	addressNum int not null auto_increment primary key,
   addressId varchar(20) not null ,
   addressName varchar(10) not null ,
   addressPhone varchar(20) not null,
   addressAdr varchar(50) not null
)default charset=utf8mb4;

#문의 리스트
create table if not exists cslist(
   num int not null auto_increment primary key,
   title varchar(40) not null,
   category varchar(20) not null,
   content varchar(250) not null,
   reply_content varchar(250),
    member_id varchar(10) not null,
    reply_member_id varchar(10),
    send_day date not null,
    reply_day date,
    foreign key(member_id) references member(id) on update cascade on delete cascade, 
    foreign key(reply_member_id) references member(id) on update cascade on delete cascade 
) DEFAULT CHARSET=utf8mb4;


alter table spots add unique name(name);
create table score(
	num int primary key auto_increment,
	name varchar(20) not null,
 	score int not null, 
	Questions varchar(30),
 	foreign key(name) references spots(name)
);

select * from score;
