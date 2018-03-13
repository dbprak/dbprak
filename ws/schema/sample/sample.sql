create schema sample;

set schema sample;

create table academic (
	id bigint not null primary key,
	firstname varchar(255) not null,
	lastname varchar(255) not null,
	degree varchar(14),
	salary float
);

create table course (
	code char(7) not null primary key,
	title varchar(50) not null,
	semester smallint,
	lecturer bigint not null references academic(id)
);

create table student (
	studentNumber int not null primary key,
	firstname varchar(255) not null,
	lastname varchar(255) not null,
	supervisor bigint references academic(id),
	assistant char(7) references course(code)
);

create table attends (
	student int not null references student(studentnumber),
	course char(7) not null references course(code),
	application timestamp not null
);