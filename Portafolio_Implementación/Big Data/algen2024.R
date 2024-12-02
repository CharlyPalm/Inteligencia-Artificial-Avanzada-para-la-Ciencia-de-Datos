
# Algoritmos genéticos
install.packages("genalg")
library(genalg)



# Fn Fitness inv prop a los valores del arreglo
fitness.one <- function(param=c()) {
  returnVal <- 1 / sum(param)
  returnVal
}

# individuos de tamaño 100
indiv.one <- c(1,rep(0,99))
indiv.one
sum(indiv.one)
indiv.two <- rep(0,100)
indiv.three <- c(rep(1,10),rep(0,90))
sum(indiv.three)
indiv.four <- rep(1,100)
sum(indiv.four)

fitness.one(indiv.one)
fitness.one(indiv.two)
fitness.one(indiv.three)
fitness.one(indiv.four)

#
1:10
fitness.one(1:10)
fitness.one(1:20)
# cromosoma 100
# cromosoma
super.indivual.1 <- rep(1,100)
super.indivual.1

?rbga.bin

pob.size <- 1000
pob.size/5
set.seed(1234)
ga.one <- rbga.bin(size=100, popSize=pob.size,
                   iters=300, mutationChance=0.01,
                   elitism=pob.size/5,
                   verbose = T,
                   evalFunc=fitness.one)



summary(ga.one, echo = T)
attributes(ga.one)
ga.one$type
ga.one$size
ga.one$popSize
ga.one$population
ga.one$evaluations
ga.one$best



best <- ga.one$population[ga.one$evaluations == min(ga.one$best),]

best <- ga.one$population[ga.one$evaluations == min(ga.one$best),][1,]
best
sum(best)

?sample
set.seed(1234)
individual.1 <- sample(c(0,1),100,replace=T)
set.seed(1235)
individual.2 <- sample(c(0,1),100,replace=T)

super.indivual.1

fitness.one(individual.1)
fitness.one(individual.2)

fitness.one(super.indivual.1)


# supervivencia

items <- data.frame(
  item=c("encendedor","casa_camp","navaja","linterna",
         "manta","sleep_bag","brujula", "agua.litro",
         "atun.kilo", "cuchillo", "cerillos", "bat.extra"
         ,"pedernal", "jabon", "cepillo", "papel.higie", "barritas.avena",
         "kit.pesca", "cazuela", "botiquin", "carne.seca",
         "cerveza", "mezcal", "hielos"),
  survivalpoints = c(90,100,85,100,50,60,80,100,80,85,70,100,80,40,40,10,40,70,100,99,99,5,5,2),
  weight = c(.01, 5,.1,.5,2,1,.01, 1, 1, .1,.01,.5, 1,.1,.01,.01,.5,2,.5,.5,1,10,2,5)
)

?save
getwd()
save(items,file="items.R")
length(weight)
length(survivalpoints)

?load
setwd('/home/cursos/Descargas')
load("items.R")

weight.limit <- 8

juan <- sample(c(0,1),24,replace=T)
juan %*% items$weight
juan %*% items$survivalpoints
alberto <- sample(c(0,1),24,replace=T)
alberto %*% items$weight
alberto %*% items$survivalpoints
fitness.tree(alberto)


fitness.tree <- function(x) {
  items.weight <- x %*% items$weight
  items.s.p <- x %*% items$survivalpoints
  if (items.weight > weight.limit)
  {
    return(0)
  }
  else
  {
    return (-items.s.p)
  }
}

ga.tree <- rbga.bin(size=24, popSize=200,
                    mutationChance=.01,
                    elitism=40, iters=200,
                    evalFunc=fitness.tree)

super.alfa <- c(1,0,1,1,0,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,0,0)
length(super.alfa)
fitness.tree(super.alfa)
super.alfa %*% items$weight

items[super.alfa==1,]$item






#getwd()
#setwd()

mochila.data <- read.csv('algenmochila.csv', stringsAsFactors = FALSE)
mochila.data
class(mochila.data)
nrow(mochila.data)


# Supervivencia
mochila.data$item
mochila.data$beneficio
mochila.data$peso

# Algoritmo genético
weight.limit <- 10. #Límite en kilos de la mochila
chromo.size <- nrow(mochila.data)
set.seed(1234)
juan <- sample(c(0,1),37,replace=T)

ana <- c(1, rep(0,36))
ana
ana%*% mochila.data$peso
ana%*% mochila.data$beneficio
supervivencia(ana)

sum(juan)
juan %*% mochila.data$peso  # %*%
juan%*% mochila.data$beneficio
supervivencia(juan)

carlos<- c(rep(1,10), rep(0,27))
carlos
carlos%*% mochila.data$peso
carlos%*% mochila.data$beneficio
supervivencia(carlos)

mochila.data$item[26]
mochila.data$item[27]

sum(mochila.data$beneficio[26:27])
mochila.data$item[25]
mochila.data$item[33]


mochila.data$item[11]
mochila.data$item[17]

sum(mochila.data$beneficio[25], mochila.data$beneficio[33])

supervivencia <- function(items){
  items.weight <- items%*%mochila.data$peso
  items.s.p <- items%*%mochila.data$beneficio
  if(items.weight>weight.limit){
    return(1000)
  }
  if (items[26] != items[27] & sum(items[26], items[27])>0) {
    items.s.p <- items.s.p - sum(mochila.data$beneficio[26:27]) * 5
  }
  if (sum(items[25], items[33])==2) {
    items.s.p <- items.s.p - sum(mochila.data$beneficio[25], mochila.data$beneficio[33]) * 5
  }
  if (items[11] != items[17] & sum(items[11], items[17])>0){
    items.s.p <- items.s.p - sum(mochila.data$beneficio[25], mochila.data$beneficio[33]) * 5
  }
    return (-items.s.p)
}


ga.supervivencia <- rbga.bin(size=chromo.size, 
                             popSize = 1000,
                             mutationChance = .01,
                             elitis = 200, 
                             iters = 60,
                             verbose = TRUE,
                             evalFunc=supervivencia)

class(ga.supervivencia)
summary(ga.supervivencia, echo = T)
attributes(ga.supervivencia)
ga.supervivencia$type
ga.supervivencia$size
ga.supervivencia$popSize
ga.supervivencia$population
ga.supervivencia$evaluations
ga.supervivencia$best

best <- ga.supervivencia$population[ga.supervivencia$evaluations == min(ga.supervivencia$best),]
best <- ga.supervivencia$population[ga.supervivencia$evaluations == min(ga.supervivencia$best),][1,]
best

sum(best)
supervivencia(best)
best%*% mochila.data$peso


# ¿Qué se llevó?
best
mochila.data$item[best==1]










