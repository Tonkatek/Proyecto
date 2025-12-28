CREATE TABLE cpu (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    hilos INT NOT NULL,
    cores INT NOT NULL,
    socket VARCHAR(50) NOT NULL,
    consumo_watts INT NOT NULL
);

CREATE TABLE psu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    capacidad_watts INT NOT NULL,
    cantidad_puertos INT NOT NULL,
    certificacion VARCHAR(30) NOT NULL
);

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

CREATE TABLE hard_disc (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    capacidad_gb INT NOT NULL,
    interfaz VARCHAR(30) NOT NULL,
    velocidad_mb_s INT NOT NULL
);

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

CREATE TABLE cooling (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    socket_compatible VARCHAR(100) NOT NULL,
    tamano_mm INT NOT NULL,
    consumo_watts INT NOT NULL
);