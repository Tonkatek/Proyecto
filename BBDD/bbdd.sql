DROP DATABASE IF EXISTS tonkatek_db;
CREATE DATABASE tonkatek_db;
USE tonkatek_db;

CREATE TABLE cpu (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    hilos INT NOT NULL,
    cores INT NOT NULL,
    socket VARCHAR(50) NOT NULL,
    consumo_watts INT NOT NULL
);

INSERT INTO cpu (nombre, marca, hilos, cores, socket, consumo_watts) VALUES
('Ryzen 5 5600X', 'AMD', 12, 6, 'AM4', 65),
('Ryzen 7 5800X', 'AMD', 16, 8, 'AM4', 105),
('Core i5-12400F', 'Intel', 12, 6, 'LGA1700', 65),
('Core i7-12700K', 'Intel', 20, 12, 'LGA1700', 125);

CREATE TABLE psu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    capacidad_watts INT NOT NULL,
    cantidad_puertos INT NOT NULL,
    certificacion VARCHAR(30) NOT NULL
);

INSERT INTO psu (nombre, marca, capacidad_watts, cantidad_puertos, certificacion) VALUES
('RM750x', 'Corsair', 750, 8, '80 Plus Gold'),
('Focus GX-650', 'Seasonic', 650, 7, '80 Plus Gold'),
('Pure Power 11', 'Be Quiet!', 600, 6, '80 Plus Bronze'),
('EVGA 850 GQ', 'EVGA', 850, 9, '80 Plus Gold');

CREATE TABLE motherboard (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    socket VARCHAR(50) NOT NULL,
    chipset VARCHAR(50) NOT NULL,
    form_factor VARCHAR(30) NOT NULL,
    slots_ram INT NOT NULL,
    max_ram_gb INT NOT NULL
);

INSERT INTO motherboard (nombre, marca, socket, chipset, form_factor, slots_ram, max_ram_gb) VALUES
('ROG STRIX B550-F', 'ASUS', 'AM4', 'B550', 'ATX', 4, 128),
('MAG B660M MORTAR', 'MSI', 'LGA1700', 'B660', 'Micro-ATX', 4, 128),
('A520M S2H', 'Gigabyte', 'AM4', 'A520', 'Micro-ATX', 2, 64),
('Z690 AORUS ELITE', 'Gigabyte', 'LGA1700', 'Z690', 'ATX', 4, 128);

CREATE TABLE hard_disc (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    capacidad_gb INT NOT NULL,
    interfaz VARCHAR(30) NOT NULL,
    velocidad_mb_s INT NOT NULL
);

INSERT INTO hard_disc (nombre, marca, tipo, capacidad_gb, interfaz, velocidad_mb_s) VALUES
('Barracuda', 'Seagate', 'HDD', 2000, 'SATA III', 180),
('Blue SN550', 'Western Digital', 'SSD', 1000, 'NVMe', 2400),
('870 EVO', 'Samsung', 'SSD', 500, 'SATA III', 560),
('Crucial MX500', 'Crucial', 'SSD', 1000, 'SATA III', 560);

CREATE TABLE gpu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    chipset VARCHAR(30) NOT NULL,
    modelo_chip VARCHAR(50) NOT NULL,
    vram_gb INT NOT NULL,
    tipo_memoria VARCHAR(30) NOT NULL,
    interfaz VARCHAR(30) NOT NULL,
    consumo_watts INT NOT NULL
);

INSERT INTO gpu (nombre, marca, chipset, modelo_chip, vram_gb, tipo_memoria, interfaz, consumo_watts) VALUES
('RTX 3060', 'NVIDIA', 'RTX', 'GA106', 12, 'GDDR6', 'PCIe 4.0', 170),
('RTX 4070', 'NVIDIA', 'RTX', 'AD104', 12, 'GDDR6X', 'PCIe 4.0', 200),
('RX 6700 XT', 'AMD', 'RX', 'Navi 22', 12, 'GDDR6', 'PCIe 4.0', 230),
('RX 6600', 'AMD', 'RX', 'Navi 23', 8, 'GDDR6', 'PCIe 4.0', 132);

CREATE TABLE ram (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    capacidad_gb INT NOT NULL,
    velocidad_mhz INT NOT NULL,
    latencia VARCHAR(20),
    voltaje DECIMAL(3,2) NOT NULL
);

INSERT INTO ram (nombre, marca, tipo, capacidad_gb, velocidad_mhz, latencia, voltaje) VALUES
('Vengeance LPX', 'Corsair', 'DDR4', 16, 3200, 'CL16', 1.35),
('Ripjaws V', 'G.Skill', 'DDR4', 32, 3600, 'CL18', 1.35),
('Kingston Fury Beast', 'Kingston', 'DDR5', 16, 5200, 'CL40', 1.25),
('Trident Z5', 'G.Skill', 'DDR5', 32, 6000, 'CL36', 1.35);

CREATE TABLE cooling (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    socket_compatible VARCHAR(100) NOT NULL,
    tamano_mm INT NOT NULL,
    consumo_watts INT NOT NULL
);

INSERT INTO cooling (nombre, marca, tipo, socket_compatible, tamano_mm, consumo_watts) VALUES
('Hyper 212', 'Cooler Master', 'Aire', 'AM4, LGA1700', 120, 15),
('NH-D15', 'Noctua', 'Aire', 'AM4, LGA1700', 140, 12),
('H100i RGB', 'Corsair', 'Líquida', 'AM4, LGA1700', 240, 25),
('Kraken X63', 'NZXT', 'Líquida', 'AM4, LGA1700', 280, 30);