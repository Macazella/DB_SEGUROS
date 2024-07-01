-- Escribir una sentencia que agregue un campo a una tabla. 

ALTER TABLE VINO 
ADD URL_IMAGEN VARCHAR2(255); 
 

-- Escribir una sentencia que modifique un campo de una tabla. 

ALTER TABLE VINO 
MODIFY URL_IMAGEN VARCHAR2(500); 
 

-- Escribir una sentencia que borre un campo de una tabla (en esta versión de Apex Oracle, no tiene retorno). 

ALTER TABLE CLIENTE 
DROP COLUMN EMAIL; 
 
-- Escribir una sentencia que elimine una constraint que ya no se usa. 

ALTER TABLE VENTAS 
DROP CONSTRAINT FK_VENTA_COMPRA; 
 

-- Escribir una sentencia que deshabilite una constraint pero que no la elimine. 

ALTER TABLE VENTAS 
DISABLE CONSTRAINT FK_VENTA_PEDIDO; 

-- Escribir una sentencia que habilite la constraint que estaba deshabilitada. 

ALTER TABLE VENTAS 
ENABLE CONSTRAINT FK_VENTA_PEDIDO; 
 

-- Escribir una sentencia que elimine una tabla de la base de datos y que no quede en la “papelera de reciclaje” (en esta versión de Apex Oracle, no tiene retorno). 

DROP TABLE VENTAS PURGE;  

-- Para saber si la tabla está en la “papelera de reciclaje” de la base de datos cuál es la sentencia? 
SELECT * FROM RECYCLEBIN WHERE original_name = 'VENTAS';
 

-- Escriba la sentencia para traer el objeto que fue eliminado y está en la papelera. 

DROP TABLE PEDIDO; 

 
FLASHBACK TABLE PEDIDO TO BEFORE DROP; 