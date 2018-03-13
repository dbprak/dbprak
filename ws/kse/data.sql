-- Traders selling
insert into traders (t_id, t_name, t_balance) values (0, 'TRADER0',1000);
insert into traders (t_id, t_name, t_balance) values (1, 'TRADER1',2000);
insert into traders (t_id, t_name, t_balance) values (2, 'TRADER2',3000);
insert into traders (t_id, t_name, t_balance) values (3, 'TRADER3',4000);
insert into traders (t_id, t_name, t_balance) values (4, 'TRADER4',5000);
-- Traders buying
insert into traders (t_id, t_name, t_balance) values (5, 'TRADER5',1000000);
insert into traders (t_id, t_name, t_balance) values (6, 'TRADER6',2000000);
insert into traders (t_id, t_name, t_balance) values (7, 'TRADER7',3000000);
insert into traders (t_id, t_name, t_balance) values (8, 'TRADER8',4000000);
insert into traders (t_id, t_name, t_balance) values (9, 'TRADER9',5000000);


-------------------------------------------------------------------------------
-- P1 (Oracle): Exactly one limit (36) yields highest trading volume (700)
-- New price: 36
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Oracle', 'BLUE CHIP', 34);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Oracle', 300);
insert into depots (d_trader, d_stock, d_amount) values (1, 'Oracle', 200);
insert into depots (d_trader, d_stock, d_amount) values (2, 'Oracle', 100);
insert into depots (d_trader, d_stock, d_amount) values (3, 'Oracle', 120);
insert into depots (d_trader, d_stock, d_amount) values (4, 'Oracle', 100);

insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 250, 'Oracle', 33);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 150, 'Oracle', 33);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 80,  'Oracle', 34);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 120, 'Oracle', 34);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 4, 100, 'Oracle', 36);

insert into depots (d_trader, d_stock, d_amount) values (5, 'Oracle', 5);
insert into depots (d_trader, d_stock, d_amount) values (6, 'Oracle', 10);
insert into depots (d_trader, d_stock, d_amount) values (7, 'Oracle', 15);
insert into depots (d_trader, d_stock, d_amount) values (8, 'Oracle', 20);

insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 100, 'Oracle', 36);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 200, 'Oracle', 36);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 90,  'Oracle', 37);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 8, 110, 'Oracle', 37);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 9, 200, 'Oracle', 39);


-------------------------------------------------------------------------------
-- P2 (IBM): Several limits (628, 629) yield the highest trading volume (500) and there is a call backlog (100)
-- New price: 629
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'IBM', 'PENNY', 631);

insert into depots (d_trader, d_stock, d_amount) values (0, 'IBM', 210);
insert into depots (d_trader, d_stock, d_amount) values (1, 'IBM', 310);
insert into depots (d_trader, d_stock, d_amount) values (2, 'IBM', 310);
insert into depots (d_trader, d_stock, d_amount) values (3, 'IBM', 310);
insert into depots (d_trader, d_stock, d_amount) values (4, 'IBM', 400);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 100, 'IBM', 625);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 100, 'IBM', 625);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 180, 'IBM', 628);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 120, 'IBM', 628);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 4, 200, 'IBM', 632);

insert into depots (d_trader, d_stock, d_amount) values (5, 'IBM', 5);
insert into depots (d_trader, d_stock, d_amount) values (6, 'IBM', 10);
insert into depots (d_trader, d_stock, d_amount) values (7, 'IBM', 15);
insert into depots (d_trader, d_stock, d_amount) values (8, 'IBM', 20);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 50,  'IBM', 629);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 150, 'IBM', 629);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 230, 'IBM', 630);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 8, 170, 'IBM', 630);


-------------------------------------------------------------------------------
-- P3 (HP): Several limits (15, 16) yield the highest trading volume (500) and there is a put backlog (100)
-- New price: 15
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'HP', 'PENNY', 13);

insert into depots (d_trader, d_stock, d_amount) values (0, 'HP', 105);
insert into depots (d_trader, d_stock, d_amount) values (1, 'HP', 110);
insert into depots (d_trader, d_stock, d_amount) values (2, 'HP', 115);
insert into depots (d_trader, d_stock, d_amount) values (3, 'HP', 300);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 100, 'HP', 13);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 100, 'HP', 13);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 100, 'HP', 15);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 300, 'HP', 15);

insert into depots (d_trader, d_stock, d_amount) values (5, 'HP', 5);
insert into depots (d_trader, d_stock, d_amount) values (6, 'HP', 10);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 120, 'HP', 16);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 80,  'HP', 16);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 140, 'HP', 17);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 8, 160, 'HP', 17);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 9, 150, 'HP', 12);


-------------------------------------------------------------------------------
-- P4 (Google, Microsoft, Amazon): Several limits yield highest trading volume and there are both call and put backlogs
-- Google: Market price above - New price: 872
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Google', 'VALUE', 873);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Google', 55);
insert into depots (d_trader, d_stock, d_amount) values (1, 'Google', 60);
insert into depots (d_trader, d_stock, d_amount) values (2, 'Google', 20);
insert into depots (d_trader, d_stock, d_amount) values (3, 'Google', 100);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 50, 'Google', 869);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 50, 'Google', 869);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 20, 'Google', 871);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 80, 'Google', 871);

insert into depots (d_trader, d_stock, d_amount) values (5, 'Google', 5);
insert into depots (d_trader, d_stock, d_amount) values (6, 'Google', 10);
insert into depots (d_trader, d_stock, d_amount) values (7, 'Google', 15);
insert into depots (d_trader, d_stock, d_amount) values (8, 'Google', 25);
insert into depots (d_trader, d_stock, d_amount) values (9, 'Google', 150);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 10, 'Google', 870);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 90, 'Google', 870);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 40, 'Google', 872);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 8, 60, 'Google', 872);

-- Microsoft: Market price in-between - New price: 34
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Microsoft', 'INCOME', 34);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Microsoft', 50);
insert into depots (d_trader, d_stock, d_amount) values (1, 'Microsoft', 70);
insert into depots (d_trader, d_stock, d_amount) values (2, 'Microsoft', 50);
insert into depots (d_trader, d_stock, d_amount) values (3, 'Microsoft', 70);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 50, 'Microsoft', 32);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 50, 'Microsoft', 32);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 50, 'Microsoft', 34);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 50, 'Microsoft', 34);

insert into depots (d_trader, d_stock, d_amount) values (5, 'Microsoft', 10);
insert into depots (d_trader, d_stock, d_amount) values (6, 'Microsoft', 20);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 80,  'Microsoft', 33);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 20,  'Microsoft', 33);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 100, 'Microsoft', 35);

-- Amazon: Market price below - New price: 262
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Amazon', 'VALUE', 261);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Amazon', 170);
insert into depots (d_trader, d_stock, d_amount) values (1, 'Amazon', 50);
insert into depots (d_trader, d_stock, d_amount) values (2, 'Amazon', 150);
insert into depots (d_trader, d_stock, d_amount) values (3, 'Amazon', 70);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 150, 'Amazon', 262);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 50,  'Amazon', 262);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 150, 'Amazon', 265);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 50,  'Amazon', 265);

insert into depots (d_trader, d_stock, d_amount) values (5, 'Amazon', 20);
insert into depots (d_trader, d_stock, d_amount) values (6, 'Amazon', 30);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 100, 'Amazon', 264);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 100, 'Amazon', 264);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 200, 'Amazon', 267);

-------------------------------------------------------------------------------
-- P5 (Apple, Facebook, Cisco): Several limits yield highest trading volume without backlogs
-- Apple: Market price above - New price: 443
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Apple', 'BLUE CHIP', 445);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Apple', 100);
insert into depots (d_trader, d_stock, d_amount) values (1, 'Apple', 110);
insert into depots (d_trader, d_stock, d_amount) values (3, 'Apple', 160);
insert into depots (d_trader, d_stock, d_amount) values (2, 'Apple', 200);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 100, 'Apple', 441);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 100, 'Apple', 441);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 140, 'Apple', 442);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 160, 'Apple', 442);

insert into depots (d_trader, d_stock, d_amount) values (5, 'Apple', 50);
insert into depots (d_trader, d_stock, d_amount) values (6, 'Apple', 60);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 100, 'Apple', 443);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 100, 'Apple', 443);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 150, 'Apple', 445);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 8, 150, 'Apple', 445);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 9, 400, 'Apple', 440);

-- Facebook: Market price in-between - New price: 24
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Facebook', 'INCOME', 24);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Facebook', 130);
insert into depots (d_trader, d_stock, d_amount) values (1, 'Facebook', 140);
insert into depots (d_trader, d_stock, d_amount) values (2, 'Facebook', 300);
insert into depots (d_trader, d_stock, d_amount) values (3, 'Facebook', 150);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 130, 'Facebook', 22);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 70,  'Facebook', 22);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 300, 'Facebook', 23);

insert into depots (d_trader, d_stock, d_amount) values (9, 'Facebook', 500);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 150, 'Facebook', 25);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 50,  'Facebook', 25);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 170, 'Facebook', 26);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 8, 130, 'Facebook', 26);

-- Cisco: Market price below - New price: 25
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Cisco', 'PENNY', 23);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Cisco', 100);
insert into depots (d_trader, d_stock, d_amount) values (1, 'Cisco', 100);
insert into depots (d_trader, d_stock, d_amount) values (2, 'Cisco', 160);
insert into depots (d_trader, d_stock, d_amount) values (3, 'Cisco', 140);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 100, 'Cisco', 22);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 1, 100, 'Cisco', 22);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 2, 160, 'Cisco', 25);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 3, 140, 'Cisco', 25);

insert into depots (d_trader, d_stock, d_amount) values (5, 'Cisco', 5);
insert into depots (d_trader, d_stock, d_amount) values (6, 'Cisco', 10);
insert into depots (d_trader, d_stock, d_amount) values (7, 'Cisco', 15);
insert into depots (d_trader, d_stock, d_amount) values (8, 'Cisco', 20);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 50,  'Cisco', 26);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 6, 150, 'Cisco', 26);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 7, 300, 'Cisco', 27);


-------------------------------------------------------------------------------
-- P6 (SAP, Intel, Yahoo!): There are both put and call orders but no trades are possible
-- SAP: Market price above - New price: 53
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'SAP', 'INCOME', 54);

insert into depots (d_trader, d_stock, d_amount) values (0, 'SAP', 210);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 200, 'SAP', 53);

insert into depots (d_trader, d_stock, d_amount) values (5, 'SAP', 5);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 100, 'SAP', 52);

-- Intel: Market price in-between - New price: 23
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Intel', 'BLUE CHIP', 23);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Intel', 200);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 200, 'Intel', 25);

insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 200, 'Intel', 22);

-- Yahoo!: Market price below - New price: 25
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Yahoo!', 'PENNY', 26);

insert into depots (d_trader, d_stock, d_amount) values (0, 'Yahoo!', 200);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 200, 'Yahoo!', 25);

insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 5, 200, 'Yahoo!', 23);


-------------------------------------------------------------------------------
-- P7 (AMD, NVIDIA): There are only call or put orders
-- AMD: Only call orders - New price: 171
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'AMD', 'INCOME', 171);

insert into depots (d_trader, d_stock, d_amount) values (0, 'AMD', 50);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 0, 100, 'AMD', 172);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('CALL', 1, 100, 'AMD', 173);

-- NVIDIA: Only put orders - New price: 14
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'NVIDIA', 'PENNY', 14);

insert into depots (d_trader, d_stock, d_amount) values (0, 'NVIDIA', 210);
insert into orders (o_type, o_trader, o_amount, o_stock, o_limit) values ('PUT', 0, 200, 'NVIDIA', 15);


-- Stock for which no orders occurr
insert into market (m_time, m_stock, m_stocktype, m_price) values (0, 'Dell', 'PENNY', 35);
