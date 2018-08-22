DROP TABLE coffee_orders;

CREATE TABLE coffee_orders (
  id serial4 primary key,
  first_name varchar(255),
  type varchar(255),
  size varchar(255),
  sugar varchar(255)
);
