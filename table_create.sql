create table employees(
    employee_id int primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    password_hash varchar(255) not null,
    employee_role varchar(50) not null
);

create table supplies(
    supply_id int primary key,
    item_name varchar(255) not null
);

create table purchases(
    purchase_id int primary key,
    purchase_supply_id int not null,
    purchase_quantity int not null,
    purchase_date date not null,
    expiration_date date,
    vendor_id int,
    constraint fk_supply_id
        foreign key (purchase_supply_id)
        references supplies (supply_id)
);

create table menu_items(
    menu_item_id int primary key,
    menu_item_name varchar(255),
    price decimal(10,2) not null,
    image_url varchar(255)
);

create table sales(
    sale_id int primary key,
    sale_price decimal(10,2) not null,
    sale_tip decimal(10,2) not null,
    sale_employee_id int not null,
    constraint fk_staff_id
        foreign key (sale_employee_id)
        references employees (employee_id)
);