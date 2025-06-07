create table material_type (
id serial primary key,
material_type text,
percent_fall float
);

create table product_type (
id serial primary key,
product_type text,
coef_prod_type text
);

create table workshops (
id serial primary key,
shop_name text,
shop_type text,
people_count int
);

create table products_import (
id serial primary key,
product_type int references product_type(id),
art_name text,
art int,
min_cost int,
main_material int references material_type(id)
);

create table workshops_prod (
id serial primary key,
product_name text,
workshop_name int references workshops(id),
time_to_make float
)

