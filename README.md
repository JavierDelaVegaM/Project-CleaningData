# Project-CleaningData
Proyecto de curso de Getting and Cleaning Data

## Instrucciones

* El código considera que el archivo ya está descargando en la máquina local y descompactado
* carga los arrchivos X_test.txt y X_train.txt desde los subdirectorios creandos en la descarga en un data frames
* También se carga el archivo con los nombres de las columnas en otro data frame
* En el dataframe de los nombres de las columnas obtenemos únicamente las columnas que tiene las palabras "mean" y "std", porque son las columnas que se necesitan.
* Después de que obtuvimos las nombres de las columnas con "mean" y "std" filtraremos esas columnas en los dataframes con los datos.
* Posteriormente asginamos los nombres de las columnas a los dataframes de datos.
* A ambos dataframes de datos se les agrega la columna "Id" porque se utilizará para el merge.
* Se hace el merge de los dataframes de datos, para obtener solamente un dataframe
* La última instrucción crea el archivo mergeData.txt con la información solicitada
