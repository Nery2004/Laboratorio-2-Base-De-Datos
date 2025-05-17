# Laboratorio de Base de Datos 1 – Ciclo 1, 2025

**Universidad del Valle de Guatemala**
**Facultad de Ingeniería – cc3088**

Este repositorio contiene los archivos correspondientes al laboratorio de la asignatura **Bases de Datos 1**, estructurado en tres partes: definición del esquema, inserción de datos y lógica de negocio.

## Estructura del Proyecto

* `ddl.sql`: Definición del esquema y creación de tablas con restricciones.
* `data.sql`: Inserción de datos de prueba (al menos 50 registros por tabla principal).
* `lab.sql`: Funciones, procedimientos almacenados, vistas y triggers.
* `analisis.pdf`: Documento con las respuestas argumentadas a las preguntas de análisis.

## Instrucciones para ejecutar el laboratorio

> ⚠️ Es importante ejecutar los scripts en el siguiente orden para evitar errores de integridad referencial o dependencias no satisfechas.

1. **Definir el esquema (crear tablas, restricciones, llaves primarias/foráneas):**

   ```sql
   \i ddl.sql
   ```

2. **Insertar los datos de prueba:**

   ```sql
   \i data.sql
   ```

3. **Ejecutar lógica del sistema (funciones, procedimientos, vistas y triggers):**

   ```sql
   \i lab.sql
   ```

> Recomendamos utilizar una herramienta como `psql`, DBeaver o pgAdmin para ejecutar los scripts en una base de datos PostgreSQL.

## Contenido del laboratorio

El sistema implementado varía según el número de grupo, pero en general incluye:

* **3 funciones**:

  * Escalar
  * Que retorna un conjunto de resultados
  * Con múltiples parámetros y lógica condicional
* **2 procedimientos almacenados**
* **4 vistas**
* **2 triggers** (uno BEFORE y uno AFTER)

## Documento de Análisis

El análisis se encuentra disponible en el siguiente enlace de Google Docs:
📄 [Ver documento de análisis (analisis.pdf)](https://docs.google.com/document/d/1qtKXI3Q1Xt4PfIjXJxusAPTnMTDRGreh_9oEh7UnLHY/edit?usp=sharing)

En este documento se responden preguntas relacionadas con decisiones de diseño, ventajas de funciones sobre vistas, escalabilidad, compatibilidad con microservicios y mucho más.

## Requisitos

* PostgreSQL 13 o superior
* Herramienta de ejecución SQL (psql, pgAdmin, DBeaver, etc.)

## Créditos

Trabajo realizado por el grupo X del curso **cc3088 - Bases de Datos 1**
Ciclo 1, 2025
**Universidad del Valle de Guatemala**

