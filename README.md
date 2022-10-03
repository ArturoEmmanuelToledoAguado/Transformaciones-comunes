# Introducción
Se propone realizar un programa que pueda realizar diferentes pruebas con cada una de las funciones vistas, donde visualmente se da un mejoramiento de la imagen original

## ¿Qué es el procesamiento digital de imagenes (PDI)?
PDI se puede definir como el conjunto de procesamientos que se realizan sobre una imagen digital ya sea para realizar su almacenamiento, transmisión o tratamiento.

## Lectura de imágenes en matlab
Para leer una imágen en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imread.html"> **imread**</a> y se asigna a una variable que representara a la imágen.

<code>imagen = imread('ruta/nombre de la imágen.extensión');</code>

## MEJORAMIENTO Y RESTAURACIÓN DE UNA IMAGEN
### ¿Cuando se dice que una imagen ha sido mejorada?
* El término de mejoramiento digital de imágenes, es realmente subjetivo en el sentido de 2 o más observadores pueden tener criterios diferentes para decir si una imagen ha sido supuestamente mejorada o no
* De hecho lo que para un observador puede ser mejoramiento para otro puede ser empeoramiento

## MEJORAMIENTO DIGITAL DE IMÁGENES
- Mejor contraste
- Bordes más definidos
- Acentuación de determinadas frecuencias o datos espaciales
- Atenuación de ruido

## TRANSFORMACIÓN DE LA INTENSIDAD
+ Podemos manipular la intensidad de una imagen a nuestra conveniencia para mejorarla
+ Existe un gran número de técnicas que nos permiten, oscurecer, aclarar y ampliar la gama de tonos de gris o de color

## TRANSFORMACIONES COMUNES
**Función cuadrada.-** Las imágenes resultantes son más oscuras

$y=\frac{x^2}{255}$

**Función cúbica.-** Los efectos son los mismos que la función anterior, pero más pronunciados

$y=\frac{x^3}{255^2}$

**Función raiz cuadrada.-** Las imágenes resultantes son más claras

$y=\sqrt(255x)$

**Función cuadrada.-** Tiene los mismos efectos que la función raíz cuadrada

$y=255\frac{\ln(1+x)}{\ln(1+255)}$


## Mostrar una imágen
La función <a href="https://la.mathworks.com/help/images/ref/imshow.html?searchHighlight=imshow&s_tid=srchtitle_imshow_1">**imshow**</a> permite mostrar una imágen abierta, modificada o creada desde matlab (la imagen se visualiza en una ventana de matlab)

<code>imshow(imagen)</code>

## Guardar una imágen
Para guardar el contenido de una imagen la cual ha sido modificada o creada en matlab se utiliza la función <a href="https://la.mathworks.com/help/matlab/ref/imwrite.html?s_tid=doc_ta">**imwrite**</a>

<code>imwrite(variable,'nombre del arvhivo.extención')</code>

En donde 'variable' representa la variable que contiene a la imágen, 'nombre del archivo', el nombre con el que se desea guardar seguido de un punto se indica el tipo de formato deseado

#### Nota
Para multiplicar los elementos de dos imágenes se usa el operador **.\*** y para elevar la potencia, los elementos de una imagen se usa **.^**

<a href="https://github.com/ArturoEmmanuelToledoAguado/Operaciones">Código</a>