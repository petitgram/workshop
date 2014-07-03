
/** MySQL & MariaDB **/
create table product(
code varchar(10) not null primary key,
name varchar(20),
price int(11),
stock int(11),
description varchar(200)
);

/** Oracle **/
create table product(
code varchar2(10) not null primary key,
name varchar2(20),
price number,
stock number,
description varchar2(200)
);