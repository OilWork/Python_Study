create database testdb;
use testdb;

/*
테이블: 회원 (member)
속성
id: varchar2(10) primary key
password: varchar2(10) not null (필수)
name: nvarchar2(30) not null
point: number(6) nullable(null을 허용-not null이 아니면 nullable)  -999999 ~ 999999. number(6,2) -9999.99 ~ 9999.99
join_date: date not null
*/
-- 컬럼명   데이터타입   제약조건
create table member(
	id				varchar(10)		primary key,  -- PK-not null + unique
	password		varchar(10)		not null,
	name			varchar(30)		not null,
	point			int 		                default 1000,
	join_date		timestamp		not null    default current_timestamp
);

desc member;
-- 테이블 삭제
drop table member;

-- 한행 insert (데이터를 삽입)
insert into member (id, password, name, point, join_date) 
				   values ('id-1', '1111', '홍길동', 1000, '2020-05-20');

-- 모든 컬럼에 값을 다 넣을 경우 컬럼 지정하는 것은 생략가능
insert into member values ('id-2', '2222', '박영희', 2000, '2019-12-10');

-- 특정 컬럼에만 값을 넣을 경우 컬럼명을 지정해햐 한다.
-- point, join_date는 생략하면 default값이 들어간다.
insert into member (id, password, name)
			        values ('id-3', '3333', '김영수');

-- joint_date 는 not null이지만 안넣으면 설정된 default값이 들어간다. 단 null을 명시적으로 넣으면 에러.
insert into member (id, password, name)
				   values ('id-4', '3333', '김영수'); 

insert into member (id, password, name,  join_date)
				   values ('id-5', '3333', '김영수', null); -- null은 제약조건을 어겼으므로 에러 발생


insert into member values ('id-6', '3333', '박철우', null, '2010-10-10'); -- point는 not null이므로 정상처리





