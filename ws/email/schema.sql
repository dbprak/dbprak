create type attachment_t
as (
    filename varchar(40),
    subject varchar(80)
)
ref using integer
mode db2sql;

create type picture_t
under attachment_t
as (
    width integer,
    height integer,
    colors integer
)
mode db2sql;

create type video_t
under picture_t
as (
    fps float,
    seconds integer
)
mode db2sql;

create type text_t
under attachment_t
as (
    content varchar(80)
)
mode db2sql;

create type address_t as (
    username varchar(20),
    domain varchar(20)
)
ref using integer
mode db2sql;

create type email_t
under text_t
as (
    date timestamp,
    from ref(address_t),
    in_reply_to ref(email_t)
)
mode db2sql;

alter type attachment_t
    add attribute contained_in ref(email_t);

create type user_t
as (
    nickname varchar(20)
)
ref using integer
mode db2sql;

create type person_t
under user_t
as (
    surname varchar(20),
    first_name varchar(20),
    date_of_birth date
)
mode db2sql;

create type organization_t
under user_t
as (
    firm varchar(30)
)
mode db2sql;


create table attachment of attachment_t (
    ref is id user generated,
    primary key (id)
);

create table picture of picture_t
under attachment inherit select privileges;

create table video of video_t
under picture inherit select privileges;

create table text of text_t
under attachment inherit select privileges;

create table address of address_t (
    ref is id user generated,
    primary key (id),
    username with options not null,
    domain with options not null,
    unique (username, domain)
);

create table email of email_t
under text inherit select privileges
(
    date with options not null,
    from with options scope address references address not null
);
alter table email
    alter in_reply_to add scope email
    add foreign key (in_reply_to) references email(id);

alter table attachment
    alter contained_in add scope email
    add foreign key (contained_in) references email(id);

create table addressee (
    email ref(email_t) scope email references email(id),
    to ref(address_t) scope address references address
);

create table user of user_t (
    ref is id user generated,
    primary key (id)
);

create table person of person_t
under user inherit select privileges;

create table organization of organization_t
under user inherit select privileges;

create table use (
    user ref(user_t) scope user references user,
    address ref(address_t) scope address references address
);
