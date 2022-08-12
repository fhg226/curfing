create table content(
    bno number primary key,
    name varchar2(50) not null,
    address varchar2(1000) not null,
    phone char(13) not null,
    foodType varchar2(20),
    price long,
    parking varchar2(20),
    salesTime varchar2(30),
    holiday varchar2(30),
    site varchar2(100),
    menu varchar2(50),
    regDate date default sysdate
);

create sequence c_seq;

drop sequence c_seq;
drop table content;

insert into content(bno, name, address, phone, foodType, price, parking, salesTime, holiday, site, menu) values(c_seq.nextval, '카페 이름', '주소', '01012345678', '커피', '10000', 1, '영업시간', '휴일', '홈페이지 주소', '메뉴');

SELECT 
	(SELECT VALUE FROM NLS_DATABASE_PARAMETERS WHERE PARAMETER='NLS_LANGUAGE')
    || '_' ||
    (SELECT VALUE FROM NLS_DATABASE_PARAMETERS WHERE PARAMETER='NLS_TERRITORY')
    || '.' ||
    (SELECT VALUE FROM NLS_DATABASE_PARAMETERS WHERE PARAMETER='NLS_CHARACTERSET')
FROM DUAL;
