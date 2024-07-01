--Sentencia que utiliza la función NVL:  

 SELECT CodPoliza,   


       NVL(Estado, 'Estado no disponible') AS Estado,   

 

       FechaEmision   

 FROM Poliza;  

 --Ejecutar una sentencia que utiliza la función NVL2:  

 SELECT CodPoliza,   

       NVL2(Estado, Estado, 'Estado No Disponible') AS Estado,   

 

       FechaEmision,   

 

       CodCat,   

 

       CodProd   
FROM Poliza;  

--Ejecutar una sentencia que utiliza la función NULLIF:  

SELECT P.Nombre AS Nombre_Productor   
FROM Productor P    

LEFT JOIN (   

 

    SELECT DISTINCT Poliza.CodProd   

 

    FROM Poliza   

 

) Pol ON P.CodProd = Pol.CodProd   
WHERE NULLIF(Pol.CodProd, Pol.CodProd) IS NULL;  

--Ejecutar una sentencia que utiliza la función COALESCE:  

SELECT P.Nombre AS Nombre_Productor,   


       COALESCE(MAX(Pol.Estado), 'Sin Pólizas Asociadas') AS Estado_Poliza   

 
FROM Productor P   
LEFT JOIN Poliza Pol ON P.CodProd = Pol.CodProd   
GROUP BY P.Nombre;  


 

--Ejecutar una sentencia que utiliza la función CASE:  

 SELECT Pol.Estado AS Estado_Poliza,   

       Pol.FechaEmision AS Fecha_Emision,   

       CASE    

           WHEN Prod.Nombre IS NULL THEN 'Productor no especificado'   

 

           ELSE Prod.Nombre   

 

       END AS Nombre_Productor   
FROM Poliza Pol   
LEFT JOIN Productor Prod ON Pol.CodProd = Prod.CodProd;  

 
--Ejecutar una sentencia que utiliza la función DECODE:  

 SELECT Pol.Estado AS Estado_Poliza,   


       Pol.FechaEmision AS Fecha_Emision,   

 

       DECODE(Prod.Nombre, NULL, 'Productor no especificado', Prod.Nombre) AS Nombre_Productor   

 FROM Poliza Pol   
LEFT JOIN Productor Prod ON Pol.CodProd = Prod.CodProd;  


--Ejecutar una sentencia que utiliza la función de Fila LOWER:  

SELECT LOWER(Descripcion) AS Descripcion_Minuscula   
FROM Categoria_Seg;  

 --Ejecutar una sentencia que utiliza la función de Fila UPPER:  

SELECT UPPER(Descripcion) AS Categoria   
FROM Categoria_Seg;  

 --Ejecutar una sentencia que utiliza la función de Fila INITCAP:  

SELECT CodPoliza, INITCAP(Estado) AS Estado_Capitalizado   
FROM Poliza;  

--Ejecutar una sentencia que utiliza la función de Fila CONCAT:  

SELECT Pol.Estado AS Estado_Poliza,   


       Cat.Descripcion AS Categoria_Poliza,   

 

       Prod.CodProd || ' - ' || Prod.Nombre AS Nombre_Productor   

 FROM Poliza Pol   
JOIN Categoria_Seg Cat ON Pol.CodCat = Cat.CodCat   
JOIN Productor Prod ON Pol.CodProd = Prod.CodProd;  

 
--Ejecutar una sentencia que utiliza la función de Fila SUBSTR:  

 SELECT SUBSTR(Estado, 1, 3) AS Primeros_Tres_Caracteres   
FROM Poliza;  

--Ejecutar una sentencia que utiliza la función de Fila LENGTH:  

SELECT CodPoliza, Estado, LENGTH(Estado) AS Longitud_Estado   
FROM Poliza;  


--Ejecutar una sentencia que utiliza la función de Fila INSTR:  

SELECT CodPoliza, Estado, FechaEmision   
FROM Poliza   
WHERE INSTR(Estado, 'Activo') > 0;  

--Ejecutar una sentencia que utiliza la función de Fila LPAD:  

SELECT LPAD(Estado, 30) AS Estado_Alineado   
FROM Poliza;  


--Ejecutar una sentencia que utiliza la función de Fila TRIM, LTRIM y RTRIM:  

SELECT   



    CodTomador,   


    Nombre AS Nombre_Con_Espacios,   


    TRIM(Nombre) AS Nombre_Sin_Espacios   


FROM   

 
    Tomador;   

 

SELECT   


    CodBenef,   


    Nombre AS Nombre_Con_Espacios,   


    LTRIM(Nombre) AS Nombre_Sin_Espacios_Izquierda   


FROM   

 
    Beneficiario;  



SELECT   

    CodBenef,   

 
    Nombre AS Nombre_Con_Espacios,   


    RTRIM(Nombre) AS Nombre_Sin_Espacios_Derecha   


FROM   

    Beneficiario;  



--Ejecutar una sentencia que utiliza la función de Fila REPLACE:  

UPDATE Categoria_Seg   
SET Descripcion = REPLACE(Descripcion, 'Seguro', 'Poliza');  


--Ejecutar una sentencia que utiliza la función de Fila ROUND:  

 

UPDATE Poliza   

 SET CodCat = ROUND(CodCat)   

WHERE CodCat IS NOT NULL;  

 

--Ejecutar una sentencia que utiliza la función de Fila TRUNC:  


SELECT   

 
    TRUNC(FechaEmision, 'YYYY') AS Anio,   


    CodProd,   


    COUNT(*) AS Num_Polizas   


FROM   


    Poliza   


GROUP BY   


    TRUNC(FechaEmision, 'YYYY'),   


    CodProd   


ORDER BY   

    Anio, CodProd;  

