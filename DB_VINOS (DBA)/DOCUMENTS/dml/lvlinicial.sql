--Sentencia que muestra todos los campos de la tabla `Categoria_Seg`**:  


SELECT * FROM Categoria_Seg;  
 

--Ejecutar una sentencia que muestre 2 campos de la tabla `Productor`**:  

SELECT Nombre, Telefono   
FROM Productor;  

--Ejecutar una sentencia que pueda multiplicar 2 campos de la tabla `Poliza`** (asumir que hay un campo `Monto` y `Descuento`):  

SELECT CodPoliza, Monto, Descuento, Monto * Descuento AS Total   
FROM Poliza;  


--Sentencia que calcule, además, un 35% de un campo en la tabla `Poliza`**:  

 

SELECT   

 

  CodPoliza,   

 

  Monto,   

 

  Monto * 0.35 AS Monto_Con_Descuento   

 

FROM Poliza;  


--Ejecutar una sentencia que ponga “alias” en los campos de la tabla `Productor`**:  


SELECT   

 

  CodProd AS Productor_ID,   

 

  Nombre AS Nombre_Productor,   

 

  Telefono AS Telefono_Productor,   

 

  Email AS Email_Productor   

 

FROM Productor;  

 

--Ejecutar una sentencia que concatene el valor de 2 campos de la tabla `Tomador`**:  

SELECT Nombre || ' - ' || Telefono AS Nombre_Telefono   
FROM Tomador;  

 

--Cláusula para eliminar los duplicados de valores en un campo de la tabla `Categoria_Seg`**:  

 SELECT DISTINCT Descripcion   
FROM Categoria_Seg;  


--Ejecutar una sentencia que filtre información por un campo numérico en la tabla `Poliza_Bien`**:  

SELECT *   
FROM Poliza_Bien   
WHERE CodBien > 100;  


--Ejecutar una sentencia que filtre información por un campo de carácter en la tabla `Productor`**:  

SELECT *   
FROM Productor   
WHERE Nombre = 'Bodega Norton';  



--Ejecutar una sentencia que utilice el operador BETWEEN en la tabla `Poliza`**:  

SELECT *   
FROM Poliza   
WHERE FechaEmision BETWEEN TO_DATE('2024-06-10', 'YYYY-MM-DD') AND TO_DATE('2024-06-14', 'YYYY-MM-DD');  


--Ejecutar una sentencia que utilice el operador IN y NOT IN en la tabla `Poliza` y `Categoria_Seg`**:  



SELECT   

 

    p.CodPoliza,   

 

    p.FechaEmision,   

 

    p.CodCat,   

 

    c.Descripcion   

 

FROM   

 

    Poliza p   

 

JOIN   

 

    Categoria_Seg c   

 

ON   

 

    p.CodCat = c.CodCat   

 

WHERE   

 

    c.Descripcion IN ('Vida', 'Auto')   

 

    AND c.Descripcion NOT IN ('Hogar', 'Salud');  



--Ejecutar una sentencia que utilice el operador LIKE en la tabla `Beneficiario`**:  

 SELECT CodBenef, Nombre, Direccion, Telefono   
FROM Beneficiario   
WHERE Nombre LIKE '%Juan%';  


 

--Ejecutar una sentencia que utilice el operador IS NULL / IS NOT NULL en la tabla `Poliza` y `Poliza_Beneficiario`**:  


 

SELECT   

 

    p.CodPoliza,   

 

    p.FechaEmision,   

 

    pb.CodBenef   

 

FROM   

 

    Poliza p   

 

LEFT JOIN   

 

    Poliza_Beneficiario pb ON p.CodPoliza = pb.CodPoliza   

 

WHERE   

 

    pb.CodBenef IS NULL OR pb.CodBenef IS NOT NULL;  


 

--Ejecutar una sentencia que utilice la cláusula ORDER BY en la tabla `Poliza` (ascendente y descendente)**:  



SELECT * FROM Poliza   
ORDER BY FechaEmision ASC;  



SELECT * FROM Poliza   
ORDER BY FechaEmision DESC;  

 

 

   

 

 

 