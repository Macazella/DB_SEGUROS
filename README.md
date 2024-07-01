# BD_SEGUROS 

DB para continuar poniendo en práctica la manipulación de datos en Apex Oracle 


## Estructura del Proyecto

El proyecto está organizado en diferentes archivos SQL que se encargan de la creación de tablas y la inserción de datos.

### Directorios y Archivos

- `DDL/`
  - `create_tables.sql`: Script para crear todas las tablas necesarias en la base de datos.
  - `inserts.sql`: Script para insertar datos de ejemplo en las tablas.
- `DML/`
- `lvlinicial.sql`: Scripts para visualizar elementos de las tablas de nivel inicial
- `lvlmedio.sql`: Scripts para visualizar los resultados de querys de las tablas de nivel medio
- `lvladvanced.sql`: Scripts para modelar a traves de querys las tablas y/o su contenido

## Instalación y Uso

### Prerrequisitos

- [Oracle Database](https://www.oracle.com/database/technologies/)
- [Oracle SQL Developer](https://www.oracle.com/tools/technologies/sqldeveloper.html)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Oracle Developer Tools for VS Code](https://marketplace.visualstudio.com/items?itemName=Oracle.oracledevtools)

### Pasos para Configurar el Proyecto

1. **Clona el repositorio:**

    ```bash
    git clone https://github.com/Macazella/DB_SEGUROS
    cd DB_SEGUROS
    ```

2. **Copia los scripts SQL a tu entorno de trabajo (si es necesario):**

    ```bash
    cp -r /path/to/your/scripts/* ~/DB_SEGUROS/DDL/
    ```

3. **Abre Visual Studio Code y navega a la carpeta del repositorio clonado.**

4. **Abre el terminal en Visual Studio Code:**
    - Ve a `View` -> `Terminal` o usa el atajo `Ctrl + ` `.

5. **Conéctate a tu base de datos Oracle utilizando Oracle Developer Tools for VS Code.**

6. **Ejecuta los scripts SQL en el siguiente orden:**

    - `create_tables.sql` para crear las tablas.
    - `inserts.sql` para insertar los datos de ejemplo.

### Ejecución de Scripts SQL

Para ejecutar un script SQL en Oracle SQL Developer o Visual Studio Code:

1. Abre el script deseado en tu editor SQL.
2. Selecciona el contenido del script.
3. Ejecuta el script en tu base de datos conectada.

## Contribuciones

Las contribuciones son bienvenidas. Por favor, sigue los siguientes pasos para contribuir:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/nueva-funcionalidad`).
3. Realiza tus cambios y haz un commit (`git commit -m 'Añadir nueva funcionalidad'`).
4. Empuja los cambios a la rama (`git push origin feature/nueva-funcionalidad`).
5. Abre un Pull Request.

## Licencia

Este proyecto está licenciado bajo la [Licencia Apache 2.0](LICENSE).

---

Si tienes alguna pregunta o sugerencia, no dudes en abrir un issue o contactarme.

DB para continuar poniendo en práctica la manipulación de datos en Apex Oracle 

 

 

Este repositorio contiene un diseño de base de datos para una compañía de seguros, incluyendo la estructura de entidades, atributos, relaciones y un diagrama ER detallado. El diseño está orientado a gestionar pólizas de seguros, productores, tomadores, beneficiarios y bienes asegurados. 

 

## Entidades y Atributos: Consideraciones, DER adjunto en el repositorio


Entidades Principales: 

 

1. **Póliza** 

   - Código de Póliza (Primary Key) 

   - Fecha de Emisión 

   - Código de Categoría (Foreign Key) 

   - Código de Productor (Foreign Key) 

   - Código de Tomador (Foreign Key) 

   - Estado (confirmada/no confirmada) 

   - Fecha de Confirmación 

 

2. **Categoría** 

   - Código de Categoría (Primary Key) 

   - Descripción 

 

3. **Productor** 

   - Código de Productor (Primary Key) 

   - Nombre 

   - Teléfono 

   - Email 

 

4. **Tomador** 

   - Código de Tomador (Primary Key) 

   - Nombre 

   - Dirección 

   - Teléfono 

   - Email 

 

5. **Beneficiario** 

   - Código de Beneficiario (Primary Key) 

   - Nombre 

   - Dirección 

   - Teléfono 

   - Email 

 

6. **Bien** 

   - Código de Bien (Primary Key) 

   - Descripción 

   - Valor 

 

### Relaciones y Cardinalidades 

- **Categoría - Póliza**: Una categoría puede tener muchas pólizas (1:N). Cada póliza pertenece a una única categoría. 

- **Productor - Póliza**: Un productor puede vender múltiples pólizas (1:N). Cada póliza es vendida por un único productor. 

- **Tomador - Póliza**: Un tomador puede tener múltiples pólizas (1:N). Cada póliza tiene un único tomador. 

- **Póliza - Beneficiario**: Una póliza puede tener múltiples beneficiarios (N:M). Un beneficiario puede estar en múltiples pólizas. 

- **Póliza - Bien**: Una póliza puede asegurar múltiples bienes (N:M). Un bien puede estar asegurado en múltiples pólizas. 

 
### Normalización 

El diseño cumple con las siguientes formas normales: 

1. **Primera Forma Normal (1FN)**: Todos los atributos son atómicos. 

2. **Segunda Forma Normal (2FN)**: No existen dependencias parciales. 

3. **Tercera Forma Normal (3FN)**: No existen dependencias transitivas. 


Saludos!! 


