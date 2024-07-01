---Escribir una sentencia que agregue un campo a una tabla:  

ALTER TABLE Poliza   
ADD URL_DOCUMENTO VARCHAR2(255);  

--Escribir una sentencia que modifique un campo de una tabla:  

ALTER TABLE Poliza   
MODIFY URL_DOCUMENTO VARCHAR2(500);  

 --Escribir una sentencia que borre un campo de una tabla (en esta versión de Apex Oracle, no tiene retorno):  

ALTER TABLE Tomador   
DROP COLUMN Email;  

--Escribir una sentencia que elimine una constraint que ya no se usa:  

ALTER TABLE Poliza_Bien   
DROP CONSTRAINT FK_POLIZA_BIEN_BIEN;  

--Escribir una sentencia que deshabilite una constraint pero que no la elimine:  

 ALTER TABLE Poliza_Bien   
DISABLE CONSTRAINT FK_POLIZA_BIEN_POLIZA;  

 --Escribir una sentencia que habilite la constraint que estaba deshabilitada:  

ALTER TABLE Poliza_Bien   

 ENABLE CONSTRAINT FK_POLIZA_BIEN_POLIZA;  

--Escribir una sentencia que elimine una tabla de la base de datos y que no quede en la “papelera de reciclaje” (en esta versión de Apex Oracle, no tiene retorno):  

 DROP TABLE Poliza_Bien PURGE;  

 --Para saber si la tabla está en la “papelera de reciclaje” de la base de datos cuál es la sentencia:  

 SELECT * FROM RECYCLEBIN WHERE original_name = 'POLIZA_BIEN';  

 --Escriba la sentencia para traer el objeto que fue eliminado y está en la papelera:  

DROP TABLE Poliza_Bien;  
FLASHBACK TABLE Poliza_Bien TO BEFORE DROP; 

 