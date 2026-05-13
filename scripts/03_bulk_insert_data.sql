USE FoodTrackDB;
GO

BULK INSERT foodtrucks
FROM 'C:\Users\francocorrea\Documents\Henry\Modulo 2\Homework M1\foodtracks.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001'
);

BULK INSERT products
FROM 'C:\Users\francocorrea\Documents\Henry\Modulo 2\Homework M1\products.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001'
);

BULK INSERT orders
FROM 'C:\Users\francocorrea\Documents\Henry\Modulo 2\Homework M1\orders.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001'
);

BULK INSERT order_items
FROM 'C:\Users\francocorrea\Documents\Henry\Modulo 2\Homework M1\order_items.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001'
);

BULK INSERT locations
FROM 'C:\Users\francocorrea\Documents\Henry\Modulo 2\Homework M1\locations.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001'
);

SELECT COUNT(*) AS total_foodtrucks FROM foodtrucks;
SELECT COUNT(*) AS total_products FROM products;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(*) AS total_order_items FROM order_items;
SELECT COUNT(*) AS total_locations FROM locations;
