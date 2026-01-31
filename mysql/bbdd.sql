DROP DATABASE IF EXISTS tonkatek_db;
CREATE DATABASE tonkatek_db;
USE tonkatek_db;

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    tipo ENUM('cpu', 'gpu', 'ram', 'motherboard', 'psu', 'hard_disc', 'cooling') NOT NULL,
    marca VARCHAR(50) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    img VARCHAR(255) DEFAULT 'default.jpg',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Índice para búsquedas más rápidas por tipo
CREATE INDEX idx_tipo ON productos(tipo);
CREATE INDEX idx_marca ON productos(marca);

-- Insertar productos de ejemplo

-- CPUs
INSERT INTO productos (nombre, tipo, marca, descripcion, precio, stock, img) VALUES
('Ryzen 5 5600X', 'cpu', 'AMD', '6 cores, 12 hilos, Socket AM4, 65W TDP', 199.99, 15, 'ryzen5-5600x.jpg'),
('Ryzen 7 5800X', 'cpu', 'AMD', '8 cores, 16 hilos, Socket AM4, 105W TDP', 299.99, 10, 'ryzen7-5800x.jpg'),
('Core i5-12400F', 'cpu', 'Intel', '6 cores, 12 hilos, Socket LGA1700, 65W TDP', 189.99, 20, 'i5-12400f.jpg'),
('Core i7-12700K', 'cpu', 'Intel', '12 cores, 20 hilos, Socket LGA1700, 125W TDP', 399.99, 8, 'i7-12700k.jpg'),
('Ryzen 9 5900X', 'cpu', 'AMD', '12 cores, 24 hilos, Socket AM4, 105W TDP', 449.99, 5, 'ryzen9-5900x.jpg');

-- GPUs
INSERT INTO productos (nombre, tipo, marca, descripcion, precio, stock, img) VALUES
('RTX 3060 12GB', 'gpu', 'NVIDIA', '12GB GDDR6, Ray Tracing, DLSS 2.0, 170W TDP', 329.99, 12, 'rtx3060.jpg'),
('RTX 4070 12GB', 'gpu', 'NVIDIA', '12GB GDDR6X, Ray Tracing Gen 3, DLSS 3.0, 200W TDP', 599.99, 6, 'rtx4070.jpg'),
('RX 6700 XT', 'gpu', 'AMD', '12GB GDDR6, Ray Tracing, FSR 2.0, 230W TDP', 379.99, 10, 'rx6700xt.jpg'),
('RX 6600 8GB', 'gpu', 'AMD', '8GB GDDR6, Ray Tracing, FSR 2.0, 132W TDP', 249.99, 18, 'rx6600.jpg'),
('RTX 4090 24GB', 'gpu', 'NVIDIA', '24GB GDDR6X, Ray Tracing Gen 3, DLSS 3.0, 450W TDP', 1599.99, 3, 'rtx4090.jpg');

-- PSUs
INSERT INTO productos (nombre, tipo, marca, descripcion, precio, stock, img) VALUES
('RM750x 750W', 'psu', 'Corsair', '750W, 80 Plus Gold, Modular, 8 conectores', 119.99, 25, 'rm750x.jpg'),
('Focus GX-650 650W', 'psu', 'Seasonic', '650W, 80 Plus Gold, Semi-modular, 7 conectores', 89.99, 30, 'focus-gx650.jpg'),
('Pure Power 11 600W', 'psu', 'Be Quiet!', '600W, 80 Plus Bronze, Semi-modular, 6 conectores', 69.99, 20, 'purepower11.jpg'),
('EVGA 850 GQ 850W', 'psu', 'EVGA', '850W, 80 Plus Gold, Semi-modular, 9 conectores', 129.99, 15, 'evga850gq.jpg');

-- Motherboards
INSERT INTO productos (nombre, tipo, marca, descripcion, precio, stock, img) VALUES
('ROG STRIX B550-F', 'motherboard', 'ASUS', 'Socket AM4, Chipset B550, ATX, 4 slots RAM (128GB max)', 179.99, 12, 'rog-b550f.jpg'),
('MAG B660M MORTAR', 'motherboard', 'MSI', 'Socket LGA1700, Chipset B660, Micro-ATX, 4 slots RAM', 149.99, 18, 'mag-b660m.jpg'),
('A520M S2H', 'motherboard', 'Gigabyte', 'Socket AM4, Chipset A520, Micro-ATX, 2 slots RAM (64GB max)', 79.99, 25, 'a520m.jpg'),
('Z690 AORUS ELITE', 'motherboard', 'Gigabyte', 'Socket LGA1700, Chipset Z690, ATX, 4 slots RAM (128GB max)', 249.99, 10, 'z690-aorus.jpg');

-- Discos duros
INSERT INTO productos (nombre, tipo, marca, descripcion, precio, stock, img) VALUES
('Barracuda 2TB HDD', 'hard_disc', 'Seagate', 'HDD 2TB, SATA III, 7200 RPM, 180 MB/s', 54.99, 40, 'barracuda-2tb.jpg'),
('Blue SN550 1TB NVMe', 'hard_disc', 'Western Digital', 'SSD 1TB, NVMe PCIe Gen3, 2400 MB/s lectura', 79.99, 35, 'sn550-1tb.jpg'),
('870 EVO 500GB', 'hard_disc', 'Samsung', 'SSD 500GB, SATA III, 560 MB/s lectura', 59.99, 50, '870evo-500gb.jpg'),
('Crucial MX500 1TB', 'hard_disc', 'Crucial', 'SSD 1TB, SATA III, 560 MB/s lectura', 69.99, 45, 'mx500-1tb.jpg'),
('990 PRO 2TB NVMe', 'hard_disc', 'Samsung', 'SSD 2TB, NVMe PCIe Gen4, 7450 MB/s lectura', 189.99, 15, '990pro-2tb.jpg');

-- RAM
INSERT INTO productos (nombre, tipo, marca, descripcion, precio, stock, img) VALUES
('Vengeance LPX 16GB', 'ram', 'Corsair', 'DDR4 16GB (2x8GB), 3200MHz, CL16, 1.35V', 59.99, 60, 'vengeance-lpx16.jpg'),
('Ripjaws V 32GB', 'ram', 'G.Skill', 'DDR4 32GB (2x16GB), 3600MHz, CL18, 1.35V', 119.99, 40, 'ripjaws-v32.jpg'),
('Kingston Fury Beast 16GB', 'ram', 'Kingston', 'DDR5 16GB (2x8GB), 5200MHz, CL40, 1.25V', 89.99, 35, 'fury-beast16.jpg'),
('Trident Z5 32GB', 'ram', 'G.Skill', 'DDR5 32GB (2x16GB), 6000MHz, CL36, 1.35V', 179.99, 25, 'trident-z5-32.jpg');

-- Cooling
INSERT INTO productos (nombre, tipo, marca, descripcion, precio, stock, img) VALUES
('Hyper 212 RGB', 'cooling', 'Cooler Master', 'Refrigeración por aire, 120mm, Socket AM4/LGA1700, 15W', 39.99, 50, 'hyper212.jpg'),
('NH-D15', 'cooling', 'Noctua', 'Refrigeración por aire, Dual 140mm, Socket AM4/LGA1700, 12W', 99.99, 20, 'nh-d15.jpg'),
('H100i RGB', 'cooling', 'Corsair', 'Refrigeración líquida AIO 240mm, Socket AM4/LGA1700, 25W', 129.99, 30, 'h100i.jpg'),
('Kraken X63', 'cooling', 'NZXT', 'Refrigeración líquida AIO 280mm, Socket AM4/LGA1700, 30W', 149.99, 22, 'kraken-x63.jpg');