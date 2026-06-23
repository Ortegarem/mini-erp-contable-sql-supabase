INSERT INTO cuentas_contables
(codigo,nombre,naturaleza)
VALUES

('1105','Caja','DEBITO'),

('1110','Bancos','DEBITO'),

('1305','Clientes','DEBITO'),

('2205','Proveedores','CREDITO'),

('2335','Costos y Gastos por Pagar','CREDITO'),

('4135','Ingresos por Servicios','CREDITO'),

('5105','Gastos Operacionales','DEBITO'),

('5135','Servicios Públicos','DEBITO'),

('5195','Gastos Diversos','DEBITO');

INSERT INTO terceros
(tipo,nombre,identificacion)
VALUES

('CLIENTE',
'Constructora Andina SAS',
'900100001'),

('CLIENTE',
'Comercializadora Bogotá SAS',
'900100002'),

('PROVEEDOR',
'Transportes Nacionales SAS',
'800200001'),

('PROVEEDOR',
'Servicios Integrales SAS',
'800200002');
