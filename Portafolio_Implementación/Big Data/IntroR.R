# Introducción a R
# Tipos de datos

# Numeric (float)
var.integer <- 5

# Integer
var.integer <- as.integer(5)
var.integer <- 5L

class(var.integer) #All variables are objects

 
?as.integer #Help with documentation

# float
var.numeric <- 4.6
class(var.numeric)

# Caracter
var.character <- 'Carlos'
class(var.character)

# Boolean
var.logical <- T | F | TRUE | FALSE
var.logical.2 <- T & F & TRUE & FALSE
var.logical.3 <- TRUE & TRUE & TRUE

?complex
var.complex <- complex(10,5)
var.complex

var.complex <- complex(1,10,5)
var.complex

var.complex <- complex(real = 10, imaginary = 5) #Código estándar
var.complex # la i es la raiz cuadrad de -1


# Vectores, arreglos, listas de elementos del mismo tipo
vec.1 <- c(1,2,3)
class(vec.1)

vec.2 <- c(1L,2L,3L)
class(vec.2)

vec.2[1] # único de R, los elementos inician desde 1

vec.3 <- c(1000L, 1000000L)
vec.3

vec.1 * 5 #multiplica cada elemento del vector

vec.3 * 5

vec.2 * vec.3 # Tener cuidado con la longitud de los vectores


vec.3 <- c(1,TRUE,0,FALSE)
class(vec.3)
vec.3

vec.4 <- as.logical(c(TRUE, 100, 1000, 10000, 0, -10000000))
vec.4

vec.5 <- c(var.integer, var.complex, var.logical, var.numeric, var.character)
vec.5

vec.6 <- as.numeric(vec.5)
vec.6
is.na(vec.6)


# matrix
1: 100
100:1
1:10000
?seq

seq.1 <- seq(from = 1, to = 200, by = 2)
seq.1
length(seq.1)

matrix.1 <- matrix(data = seq.1, nrow = 10, ncol = 10, byrow = FALSE)
matrix.1
length(matrix.1)

matrix.1[10,10]

?matrix

dim(matrix.1)
dim(vec.5)

matrix.2 <- matrix(data = seq.1, nrow = 10, ncol = 10, byrow = TRUE)
matrix.2


matrix.1 == matrix.2


matrix.1
#rm(matrix.1) #Borra de memoria
matrix.1

matrix.1[5,6] <- -1
matrix.1


matrix.1[c(1,4),c(7,8,9)]
matrix.1


matrix.1[5,6] <- 'hola mundo'
matrix.1[c(1,4),c(7,8,9)]

#list
list.1 <- list(int = var.integer, num = var.numeric, imaginary= var.complex,
               character=var.character, logical = var.logical)
list.1


list.1
list.1[[1]]
list.1[['int']]
list.1$int # Operador dollar para las listas

# data.frame es una colección de columnas de tipos diferentes.

carlos.palmieri <- data.frame(
  tiene.mascota = TRUE,
  pelicula.star.wars.favorita = NA,
  pelicula.favorita = NA,
  estatura = 1.83,
  carrera = 'itd',
  libro.favorito = 'demian',
  edad=21,
  semaforo='rojo',
  ciudad.origen='guadalajara',
  pro.morena=FALSE,
  cancion.favorita=NA,
  deporte.favorito='futbol',
  chiste.corto='"Me encantan los mensajes de voz". "Yo los detesto". "Si, esos tambien molan".'
)


#verde,rojo,amarillo

carlos.palmieri






alberto <- data.frame(
  tiene.mascota = TRUE,
  pelicula.star.wars.favorita = 'the return of the jedi',
  pelicula.favorita = 'farinelli',
  estatura = 1.825,
  carrera = NA,
  libro.favorito = 'demian',
  edad=NA,
  semaforo='rojo', 
  ciudad.origen='guadalajara',
  pro.morena=FALSE,
  cancion.favorita='te digo amor',
  deporte.favorito='squash',
  chiste.corto=''
)

paola <- data.frame(
  tiene.mascota = TRUE,
  pelicula.star.wars.favorita = NA,
  pelicula.favorita = 'ponyo',
  estatura = 1.65,
  carrera = 'itc',
  libro.favorito = 'the deadline',
  edad = 21,
  semaforo = 'rojo',
  ciudad.origen = 'obregon',
  pro.morena = FALSE,
  cancion.favorita = 'heavy',
  deporte.favorito = 'futbol',
  chiste.corto = 'que le dice una iguana a su hermana gemela, somos iguanitas'
)

jared <- data.frame(
  tiene.mascota = TRUE,
  pelicula.star.wars.favorita = 'the return of the jedi',
  pelicula.favorita = 'ready player one',
  estatura = 1.76,
  carrera = 'itc',
  libro.favorito = NA,
  edad= 22,
  semaforo='verde', 
  ciudad.origen='morelia',
  pro.morena=FALSE,
  cancion.favorita= NA,
  deporte.favorito='patinaje',
  chiste.corto='¿Que hace una abeja en el gimnasio? Zumba'
)









paulina <- data.frame (
  tiene.mascota = TRUE,
  pelicula.star.wars.favorita = 'the return of the jedi',
  pelicula.favorita = 'el cadaver de la novia',
  estatura = 1.68,
  carrera = 'itc',
  libro.favorito = 'pilares de la tierra',
  edad = NA,
  semaforo = 'rojo',
  ciudad.origen = 'los mochis',
  pro.morena = 'FALSE',
  cancion.favorita = 'rebel yell',
  deporte.favorito = 'basquetbol',
  chiste.corto = 'gomita, gomita y gomito'
)


alesson <- data.frame(
  tiene.mascota = FALSE,
  pelicula.star.wars.favorita = '3',
  pelicula.favorita = 'harry potter',
  estatura = 1.75,
  carrera = 'idm',
  libro.favorito = 'harry potter',
  edad = NA,
  semaforo = 'verde',
  ciudad.origen = 'cdmx',
  pro.morena = FALSE,
  cancion.favorita = 'sorry 4 that much',
  deporte.favorito = 'futbol',
  chiste.corto = 'como hace una panaderia cuando explota? paaaaaaan'
)
ivan <- data.frame(
  tiene.mascotas = TRUE,
  pelicula.star.wars.favorita = NA,
  pelicula.favorta = 'interestellar',
  estatura = 1.69,
  carrera = 'irs',
  libro.favorito = NA,
  edad = 21,
  semaforo = 'rojo',
  ciudad.origen = 'edomex',
  pro.morena = NA,
  cancion.favorita = 'a sky full of stars',
  deporte.favorito = 'ciclismo',
  chiste.corto = 'que hace una abeja en el gimnasio    zum ba'
)

cynthia <- data.frame(
  tiene.mascota = FALSE,
  pelicula.star.wars.favorita = 'revenge of the jedi',
  pelicula.favorita = 'interestelar',
  estatura = 1.7,
  carrera = 'idm',
  libro.favorito = 'pride and prejudice',
  edad=21,
  semaforo='verde', 
  ciudad.origen='cdmx',
  pro.morena=FALSE,
  cancion.favorita='deja vu',
  deporte.favorito='gimnasia',
  chiste.corto='habia un perro llamado pegamento, se cayo y se pego'
)

carlos.palmieri <- data.frame(
  tiene.mascota = TRUE,
  pelicula.star.wars.favorita = NA,
  pelicula.favorita = NA,
  estatura = 1.83,
  carrera = 'itd',
  libro.favorito = 'demian',
  edad=21,
  semaforo='rojo',
  ciudad.origen='guadalajara',
  pro.morena=FALSE,
  cancion.favorita=NA,
  deporte.favorito='futbol',
  chiste.corto='"Me encantan los mensajes de voz". "Yo los detesto". "Si, esos tambien molan".'
)
Carlos.Sanchez <- data.frame(
  tiene.mascota = TRUE,
  pelicula.star.wars.favorita = 'revenge of the sith',
  pelicula.favorita = 'depredator',
  estatura = 1.73,
  carrera = 'itc',
  libro.favorito = 'el principe',
  edad=21,
  semaforo='verde',
  ciudad.origen='culiacan',
  pro.morena= FALSE,
  cancion.favorita= 'push my luck',
  deporte.favorito='gimnasia',
  chiste.corto='porque los pajaros no tienen facebook porque no tienen X'
)

datos.clase <- rbind(alberto, paola, jared, paulina, alesson, carlos.palmieri)
datos.clase