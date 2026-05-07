CREATE DATABASE FoodTrackDB;
GO
  
USE FoodTrackDB;
GO

-- Tabla de foodtrucks
CREATE TABLE foodtrucks (
    foodtruck_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    cuisine_type VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

-- Tabla de productos
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,

    CONSTRAINT FK_products_foodtrucks
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtrucks(foodtruck_id)
);

-- Tabla de pedidos
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    total DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_orders_foodtrucks
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtrucks(foodtruck_id)
);

-- Tabla de detalle de pedidos
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,

    CONSTRAINT FK_orderitems_orders
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    CONSTRAINT FK_orderitems_products
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

-- Tabla de ubicaciones
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    location_date DATE NOT NULL,
    zone VARCHAR(100) NOT NULL,

    CONSTRAINT FK_locations_foodtrucks
        FOREIGN KEY (foodtruck_id)
        REFERENCES foodtrucks(foodtruck_id)
);
