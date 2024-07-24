create table account( account_id varchar(10), primary key(account_id), email varchar(200), phone varchar(15), password varchar(30), name varchar(200) ); 
create table address( address_id varchar(10), primary key(address_id), door_no varchar(10), street varchar(100), area varchar(100), city varchar(100), state varchar(100), pincode varchar(10), country varchar(100) );
-- to act as a bridge between account and address tables 
create table user_address( account_id varchar(10), foreign key(account_id) references account(account_id), address_id varchar(10), foreign key(address_id) references address(address_id), is_default char);
                          -- y - yes, n - no ); 
alter table user_address add address_type varchar(200); 

create table prdt_catg( catg_id varchar(10), primary key(catg_id), catg_name varchar(200) );
create table prdt( prdt_id varchar(10), primary key(prdt_id), catg_id varchar(10), foreign key(catg_id) references prdt_catg(catg_id), prdt_name varchar(200) ); 
create table prdt_variation( item_id varchar(10), primary key(item_id), prdt_id varchar(10), foreign key(prdt_id) references prdt(prdt_id), item_specs varchar(200), qty_in_stock int, price int );


create table brand( brand_id varchar(10), primary key(brand_id), brand_name varchar(200),catg_id varchar(10), foreign key(catg_id) references prdt_catg(catg_id));
alter table prdt_variation add brand_id varchar(10) add foreign key(brand_id) references brand(brand_id); 
create table wish_list( list_id varchar(10), primary key(list_id), list_name varchar(200), account_id varchar(10), foreign key(account_id) references account(account_id) ); 
create table wish_list_items( list_id varchar(10), foreign key(list_id) references wish_list(list_id), item_id varchar(10), foreign key(item_id) references prdt_variation(item_id) );
create table cart( cart_id varchar(10), primary key(cart_id), account_id varchar(10),foreign key(account_id) references account(account_id), item_id varchar(10), foreign key(item_id) references prdt_variation(item_id), qty int, price int ); 
create table order( cart_id varchar(10), foreign key(cart_id) references amazon_cart(cart_id), sub_total int, shipping_cost int, addr_id varchar(10), total_amt as (sub_total + shipping_cost), payment_mode varchar(200), payment_id varchar(200), order_status varchar(200) );
