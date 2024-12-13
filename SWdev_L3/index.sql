create table tbl_pgm_04(
pgmid char(4) NOT NULL Primary Key,
pgmtype char(2),
pgmname varchar2(50),
pgmlevel number(2),
playtime number(3));

insert into tbl_pgm_04 values('1001','AA','직업방송','01','60');
insert into tbl_pgm_04 values('1002','AB','개그콘서트','13','80');
insert into tbl_pgm_04 values('1003','AC','100분토론','01','100');
insert into tbl_pgm_04 values('1004','AD','중국어강좌','01','50');
insert into tbl_pgm_04 values('1005','AE','정글의법칙','01','60');
insert into tbl_pgm_04 values('1006','AF','사랑과전쟁','19','70');

create table tbl_schedule_04(
pgmid char(4) NOT NULL,
pgmcnt number(3) NOT NULL,
pgmdate char(8),
pgmtime char(4),
pgmday number(1),
primary key(pgmid,pgmcnt));

insert into tbl_schedule_04 values('1001','1','20181001','0900','1');
insert into tbl_schedule_04 values('1002','1','20181001','1100','1');
insert into tbl_schedule_04 values('1003','1','20181002','1200','2');
insert into tbl_schedule_04 values('1004','1','20181002','1400','2');
insert into tbl_schedule_04 values('1005','1','20181003','1600','3');
insert into tbl_schedule_04 values('1006','1','20181003','2000','3');
insert into tbl_schedule_04 values('1001','2','20181004','0900','4');
insert into tbl_schedule_04 values('1002','2','20181004','1100','4');
insert into tbl_schedule_04 values('1003','2','20181004','1200','4');
insert into tbl_schedule_04 values('1004','2','20181005','1400','5');
insert into tbl_schedule_04 values('1005','2','20181005','1600','5');
insert into tbl_schedule_04 values('1006','2','20181005','2000','5');
insert into tbl_schedule_04 values('1001','3','20181006','0900','6');
insert into tbl_schedule_04 values('1002','3','20181006','1100','6');
insert into tbl_schedule_04 values('1003','3','20181006','1200','6');
insert into tbl_schedule_04 values('1004','3','20181006','1400','6');
insert into tbl_schedule_04 values('1005','3','20181006','1600','6');
insert into tbl_schedule_04 values('1006','3','20181006','2000','6');

create table tbl_pgmtype_04(
typecode char(2) NOT NULL Primary Key,
type_name varchar2(20));

insert into tbl_pgmtype_04 values('AA','뉴스');
insert into tbl_pgmtype_04 values('AB','코메디');
insert into tbl_pgmtype_04 values('AC','사사');
insert into tbl_pgmtype_04 values('AD','교육');
insert into tbl_pgmtype_04 values('AE','예능');
insert into tbl_pgmtype_04 values('AF','드라마');


select p.pgmid AS "프로ID", t.type_name AS "프로타입", p.pgmname AS "프로이름", p.pgmlevel AS "등급", p.playtime AS "시간" from tbl_pgm_04 p join tbl_pgmtype_04 t on p.pgmtype = t.typecode;

select pgmid as 프로ID, pgmcnt as 회차, pgmdate as 날짜, pgmtime as 시간, pgmday as 일짜 from tbl_schedule_04;

select typecode as 프로타입, type_name as 타입이름 from tbl_pgmtype_04;