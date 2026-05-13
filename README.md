# FoodTrack DB

Este repositorio contiene el diseño inicial de la base de datos relacional para FoodTrack, una plataforma destinada a gestionar operaciones de foodtrucks en distintos puntos de una ciudad.

El proyecto contempla la gestión de foodtrucks, productos, pedidos, ubicaciones y detalle de ítems pedidos, utilizando Microsoft SQL Server como motor de base de datos.

El objetivo del trabajo es simular un entorno de desarrollo profesional, aplicando buenas prácticas de diseño relacional y versionado con Git y GitHub.

## Modelo de datos

El modelo relacional de FoodTrack está compuesto por las siguientes tablas:

- `foodtrucks`: almacena los foodtrucks registrados.
- `products`: almacena los productos vendidos por cada foodtruck.
- `orders`: registra los pedidos realizados.
- `order_items`: contiene el detalle de productos incluidos en cada pedido.
- `locations`: registra las ubicaciones de los foodtrucks por fecha y zona.

Relaciones principales:

- Un foodtruck puede tener muchos productos.
- Un foodtruck puede tener muchos pedidos.
- Un pedido puede tener muchos ítems.
- Un producto puede estar presente en muchos ítems de pedido.
- Un foodtruck puede tener muchas ubicaciones.

## Ejecución del proyecto

1. Ejecutar el script `scripts/01_create_tables.sql` para crear la base de datos y las tablas.
2. Ejecutar el script `scripts/02_alter_orders.sql` para aplicar la evolución del esquema.
3. Ejecutar el script `scripts/03_bulk_insert_data.sql` para cargar los datos desde los archivos CSV.
4. Opcionalmente, ejecutar `python/cargar_datos.py` para cargar datos de forma programática usando Python y pyodbc.
