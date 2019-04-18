/*---------------------------EJERCITACION 2---------------------------*/
/*PREGUNTAR 3*/

/*1-Listar los nombres de los productos y el nombre del modelo que posee asignado. Solo listar aquellos que tengan asignado algún modelo*/
SELECT PP.Name AS productName, PPM.Name AS modelName
FROM Production.Product AS PP INNER JOIN Production.ProductModel AS PPM
ON PP.ProductModelID = PPM.ProductModelID

/*2-Mostrar “todos”los productos junto con el modelo que tenga asignado. En el caso que no tenga asignado ningún modelo, mostrar su nulidad*/
SELECT PP.Name AS productName, PPM.Name AS modelName
FROM Production.Product AS PP LEFT JOIN Production.ProductModel AS PPM
ON PP.ProductModelID = PPM.ProductModelID

/*3-Ídem Ejercicio2, pero en lugar de mostrar nulidad, mostrar la palabra “Sin Modelo” para indicar que el producto no posee un modelo asignado.*/
SELECT CASE 
		when Production.ProductModel IS NOT NULL THEN Production.ProductModel
		ELSE 'N/A'
		END as result
FROM Production.Product AS PP LEFT JOIN Production.ProductModel AS PPM
ON PP.ProductModelID = PPM.ProductModelID

/*4-Contar la cantidad de Productos que poseen asignado cada uno de los modelos.*/
SELECT *
FROM Production.Product

FROM Production.ProductModel AS PPM INNER JOIN Production.Product AS PP
ON PPM.ProductModelID = PP.ProductModelID

