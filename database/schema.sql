CREATE TABLE terceros (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    identificacion VARCHAR(20) UNIQUE
);

CREATE TABLE cuentas_contables (
    codigo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    naturaleza VARCHAR(10) NOT NULL
);

CREATE TABLE comprobantes (
    id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    concepto TEXT
);

CREATE TABLE movimientos (
    id SERIAL PRIMARY KEY,

    comprobante_id INTEGER NOT NULL,

    cuenta_codigo VARCHAR(10) NOT NULL,

    tercero_id INTEGER,

    debito NUMERIC(15,2) DEFAULT 0,

    credito NUMERIC(15,2) DEFAULT 0,

    FOREIGN KEY (comprobante_id)
        REFERENCES comprobantes(id),

    FOREIGN KEY (cuenta_codigo)
        REFERENCES cuentas_contables(codigo),

    FOREIGN KEY (tercero_id)
        REFERENCES terceros(id)
);
