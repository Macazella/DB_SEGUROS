-- Ejecutar una sentencia que muestre todos los campos de una tabla. 

SELECT * FROM VINO; 
 

-- Ejecutar una sentencia que muestre 2 campos de otra tabla. 

SELECT NOM_RAZON, TELEFONO 

FROM CLIENTE; 

-- Ejecutar una sentencia que pueda multiplicar 2 campos de una tabla del modelo. 

SELECT CODIGO_PEDIDO, CANTIDAD, PRECIO_UNIT, CANTIDAD * PRECIO_UNIT AS TOTAL 

FROM PEDIDO;  

-- Siguiendo con el punto 3 que calcule, además, un 35% del precio unitario. 
SELECT  

  CODIGO_PEDIDO,  

  CANTIDAD,  

  PRECIO_UNIT,  

  CANTIDAD * PRECIO_UNIT AS TOTAL, 

  PRECIO_UNIT * 0.35 AS PRECIO_CON_DESCUENTO 

FROM PEDIDO; 
 

-- Ejecutar una sentencia que ponga “alias” en los campos. 

SELECT  

  CODIGO_COMPRA AS Compra_ID,  

  CANTIDAD AS Cantidad_Comprada,  

  PRECIO_UNIT AS Precio_Unitario,  

  CANTIDAD * PRECIO_UNIT AS Total, 

  PRECIO_UNIT * 0.35 AS Precio_Con_Descuento 

FROM COMPRA; 

-- Ejecutar una sentencia que concatene el valor de 2 campos de cualquier tabla. 

SELECT NOM_RAZON || ' - ' || TELEFONO AS Nombre_Telefono 
FROM CLIENTE; 
 

-- Que cláusula usarías para eliminar los duplicados de valores que haya en un campo. 

SELECT DISTINCT DESCRIPCION 
FROM VINO; 
 

-- Ejecuta una sentencia que filtre información por un campo que sea numérico. 

SELECT * 
FROM COMPRA 
WHERE CANTIDAD > 10; 
 

-- Ejecuta una sentencia que filtre información por un campo que sea carácter. 

SELECT *  
FROM PROVEEDOR  
WHERE RAZON_SOCIAL = 'Catena Zapata'; 
 

-- Ejecuta una sentencia que utilice el operador BETWEEN. 

SELECT * 
FROM PEDIDO 
WHERE FECHA BETWEEN TO_DATE('2024-06-10', 'YYYY-MM-DD') AND TO_DATE('2024-06-14', 'YYYY-MM-DD'); 
 
 -- Ejecuta una sentencia que utilice el operador IN y NOT IN. 
SELECT  

    P.CODIGO_PEDIDO,  

    P.CODIGO_VINO,  

    P.CODIGO_PROV,  

    P.CODIGO_CLI,  

    P.FECHA,  

    P.CANTIDAD,  

    P.PRECIO_UNIT  

FROM  
PEDIDO P  

JOIN  
VINO V  

ON  

    P.CODIGO_VINO = V.CODIGO_VINO  

WHERE  

    V.CATEGORIA IN ('Tintos', 'Blancos') 
    AND V.CATEGORIA NOT IN ('Espumosos', 'Dulces'); 
 

-- Ejecuta una sentencia que utilice el operador LIKE que utilice el carácter ‘%’. 

SELECT CODIGO_VINO, DESCRIPCION, CATEGORIA, AÑO_ELABOR, BODEGA 
FROM VINO 
WHERE DESCRIPCION LIKE '%Reserva%'; 
 

-- Ejecuta una sentencia que utilice el operador IS NULL / IS NOT NULL. 

SELECT  

    v.CODIGO_VINO, 

    v.DESCRIPCION AS VINO_DESCRIPCION, 

    p.CODIGO_PEDIDO, 

    p.FECHA AS FECHA_PEDIDO 

FROM  

    VINO v 

    LEFT JOIN PEDIDO p ON v.CODIGO_VINO = p.CODIGO_VINO 

WHERE 

    p.CODIGO_PEDIDO IS NULL OR p.CODIGO_PEDIDO IS NOT NULL; 
 

-- Ejecuta una sentencia que utilice la cláusula ORDER BY, ascendente, y otra descendente.

SELECT * FROM VINO 
ORDER BY AÑO_ELABOR ASC; 

SELECT * FROM PEDIDO 
ORDER BY FECHA DESC; 