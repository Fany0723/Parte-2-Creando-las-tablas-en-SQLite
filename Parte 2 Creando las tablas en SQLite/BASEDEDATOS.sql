CREATE TABLE categoria (
    categoria_id serial PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL
);
CREATE TABLE producto (
    producto_id serial PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    marca VARCHAR(150) NOT NULL,
    categoria_id int NOT NULL,
    UNIQUE (categoria_id)
);
CREATE TABLE sucursal (
    susursal_id serial PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    direccion TEXT NOT NULL
);
CREATE TABLE stock(
    stock_id serial PRIMARY KEY,
    susursal_id int NOT NULL,
    producto_id int NOT NULL,
    cantidad int NOT NULL,
    UNIQUE (sucursal_id, producto_id)
);
CREATE TABLE cliente (
    cliente_id serial PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    telefono int NOT NULL
);
CREATE TABLE orden (
    orden_id serial PRIMARY KEY,
    cliente_id int NOT NULL,
    sucursal_id int NOT NULL,
    fecha date NOT NULL,
    total float NOT NULL
);
CREATE TABLE item (
    item_id serial PRIMARY KEY,
    orden_id int NOT NULL,
    producto_id int NOT NULL,
    cantidad int NOT NULL,
    monto_venta float NOT NULL
);