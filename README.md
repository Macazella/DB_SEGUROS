# DB_VINOS

Este repositorio contiene scripts SQL para la creación y gestión de una base de datos de vinos. La base de datos incluye tablas para vinos, pedidos, proveedores, clientes, compras, categorías y bodegas.

## Estructura del Proyecto

El proyecto está organizado en diferentes archivos SQL que se encargan de la creación de tablas y la inserción de datos.

### Directorios y Archivos

- `DDL/`
  - `create_tables.sql`: Script para crear todas las tablas necesarias en la base de datos.
  - `inserts.sql`: Script para insertar datos de ejemplo en las tablas.
- `DML/`
- `scripts_pruebas.sql`: Scripts para visualizar elementos de las tablas de nivel inicial
- `scripts_lvlmedio.sql`: Scripts para visualizar los resultados de querys de las tablas de nivel medio
- `scripts_pruebas.sql`: Scripts para modelar a traves de querys las tablas y/o su contenido

## Instalación y Uso

### Prerrequisitos

- [Oracle Database](https://www.oracle.com/database/technologies/)
- [Oracle SQL Developer](https://www.oracle.com/tools/technologies/sqldeveloper.html)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Oracle Developer Tools for VS Code](https://marketplace.visualstudio.com/items?itemName=Oracle.oracledevtools)

### Pasos para Configurar el Proyecto

1. **Clona el repositorio:**

    ```bash
    git clone https://github.com/Macazella/DB_VINOS.git
    cd DB_VINOS
    ```

2. **Copia los scripts SQL a tu entorno de trabajo (si es necesario):**

    ```bash
    cp -r /path/to/your/scripts/* ~/DB_VINOS/DDL/
    ```

3. **Abre Visual Studio Code y navega a la carpeta del repositorio clonado.**

4. **Abre el terminal en Visual Studio Code:**
    - Ve a `View` -> `Terminal` o usa el atajo `Ctrl + ` `.

5. **Conéctate a tu base de datos Oracle utilizando Oracle Developer Tools for VS Code.**

6. **Ejecuta los scripts SQL en el siguiente orden:**

    - `create_tables.sql` para crear las tablas.
    - `insert_data.sql` para insertar los datos de ejemplo.

### Ejecución de Scripts SQL

Para ejecutar un script SQL en Oracle SQL Developer o Visual Studio Code:

1. Abre el script deseado (`create_tables.sql`, `insert_data.sql`, etc.) en tu editor SQL.
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


El orden correcto para crear las tablas E insertar datos es el siguiente: 

BODEGA: Esta tabla debe crearse primero porque es la tabla principal para la entidad BODEGA. Las otras tablas tienen una relación de clave foránea con la tabla BODEGA, por lo que deben crearse después de que la tabla BODEGA exista. 

CATEGORIA: Esta tabla debe crearse a continuación porque es la tabla principal para la entidad CATEGORIA. Las tablas VINO y CATEGORIA_PROVEEDOR tienen una relación de clave foránea con la tabla CATEGORIA, por lo que deben crearse después de que la tabla CATEGORIA exista. 

PROVEEDOR: Esta tabla debe crearse a continuación porque es la tabla principal para la entidad PROVEEDOR. La tabla PEDIDO tiene una relación de clave foránea con la tabla PROVEEDOR, por lo que debe crearse después de que la tabla PROVEEDOR exista. 

CLIENTE: Esta tabla debe crearse a continuación porque es la tabla principal para la entidad CLIENTE. Las tablas PEDIDO y COMPRA tienen una relación de clave foránea con la tabla CLIENTE, por lo que deben crearse después de que la tabla CLIENTE exista. 

VINO: Esta tabla debe crearse a continuación porque tiene una relación de clave foránea con la tabla BODEGA. 

PEDIDO: Esta tabla debe crearse a continuación porque tiene relaciones de clave foránea con las tablas VINO, PROVEEDOR y CLIENTE. 

COMPRA: Esta tabla debe crearse a continuación porque tiene relaciones de clave foránea con las tablas VINO y CLIENTE. 

CATEGORIA_PROVEEDOR: Esta tabla debe crearse por último porque tiene relaciones de clave foránea con las tablas CATEGORIA y PROVEEDOR. 


Saludos!! 


