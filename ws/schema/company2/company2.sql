create schema company2;

set schema company2;

create table department (
	id bigint not null primary key,
	name varchar(30),
	locationcode char(3) not null unique
);

create table employee (
	id bigint not null primary key,
	firstname varchar(255) not null,
	lastname varchar(255) not null,
	department bigint not null references department(id)
);

create table project (
	id bigint not null primary key,
	name varchar(90) not null,
	budget double not null,
	location bigint references department(id),
	director bigint references employee(id),
	deadline date
);

alter table employee add column mainProject bigint references project(id);

create table address (
	id bigint not null primary key,
	employee bigint not null references employee(id),
	street varchar(90),
	zip varchar(10) not null,
	city varchar(18) not null,
	country char(3)
);
	

create table workIn (
	member bigint not null references employee(id),
	project bigint not null references project(id),
	since timestamp not null
);
	