create table traders (
	t_id		integer not null,
	t_name		varchar(25),
	t_balance 	integer not null
);

create table depots (
	d_trader 	integer not null, 
	d_stock 	varchar(20) not null,
	d_amount	integer not null
);

create table orders (
	o_id		INTEGER PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
	o_type		char(4) not null,
	o_trader	integer not null,
	o_amount	integer not null,
	o_stock		varchar(20),
	o_limit		integer not null 
);

create table market (
	m_time		integer	not null,
	m_stock		varchar(20) not null,
	m_stocktype	char(10),
	m_price		integer	
);
	
alter table market
add constraint market_pk primary key (m_stock);

alter table traders
add constraint traders_pk primary key (t_id);

alter table depots 
add constraint depots_pk primary key (d_trader, d_stock);

alter table depots
add constraint depots_fk_1 foreign key (d_trader) references traders (t_id); 

alter table depots
add constraint depots_fk_2 foreign key (d_stock) references market (m_stock); 

alter table orders
add constraint orders_fk_1 foreign key (o_trader) references traders (t_id); 

alter table orders 
add constraint orders_fk_2 foreign key (o_stock) references market (m_stock); 

alter table orders
add constraint orders_check_1 check (o_type in ('PUT', 'CALL'));
