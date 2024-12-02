// Databricks notebook source
// MAGIC %md
// MAGIC # Scala Session

// COMMAND ----------

// comment
val courseName : String = "Introduction"

// COMMAND ----------

courseName = "tema 2"

// COMMAND ----------

val myName = "Carlos"

// COMMAND ----------

val edad : Int = 21

// COMMAND ----------

var myNameHoy : Integer = 25

// COMMAND ----------

myNameHoy = 21

// COMMAND ----------

def square(x: Int) : Int = x * x

// COMMAND ----------

square(7)

// COMMAND ----------

def cube (x : Int) : Int = x*x*x

// COMMAND ----------

cube(5)

// COMMAND ----------

// print o println o printf (?)
print(cube(5))

// COMMAND ----------

object HelloWorld {
  def main(args: Array[String]): Unit =
  println("Hello, World")
}

// COMMAND ----------

HelloWorld.main(Array.empty)

// COMMAND ----------

5 < 3

// COMMAND ----------

val number: Int = 5 // Constante
var word: String = "Hi!" // Variable
val something: Double = 45.6
val something2: Float = 50.2

// COMMAND ----------

def product(x: Int, y: Int, z: Int) : Int = (x+y)*z

// COMMAND ----------

def logicalOr(a: Boolean, b: Boolean): Boolean =
{
  println("This is the logical of your parameters")
  a || b
}

// COMMAND ----------

def logicalAnd(a: Boolean, b: Boolean): Boolean =
{
  println("This is the logical and of your parameters")
  a && b
}

// COMMAND ----------

logicalAnd(true,false)

// COMMAND ----------

val tt = logicalOr(true,true)
val ft = logicalOr(false,true)
val ff = logicalOr(false,false)
val tf = logicalOr(true,false)

// COMMAND ----------

// MAGIC %md
// MAGIC ## XOR

// COMMAND ----------

def xor(a: Boolean, b: Boolean) : Boolean =
{
  println("This is the logical and of your parameters")
  if (a != b){
    return(true)}
  if (a == b){
    return(true)}
}

// COMMAND ----------

val tt = xor(true,true)
val ft = xor(false,true)
val ff = xor(false,false)
val tf = xor(true,false)

// COMMAND ----------

def xnor(a: Boolean, b: Boolean) : Boolean
{
  return(!xor(a,b))
}

// COMMAND ----------

//This function will be evaluated as cbv, since x and y are defined with : only
def sum(x: Int, y: Int): Int = x + y


// COMMAND ----------

//x parameter will be evaluated as cbn, since it is defined with : =>
def sum_1(x: => Int, y: Int): Int = x + y

// COMMAND ----------

//both parameter will be evaluated as cbn, since both x and y are defined with : =>
def sum_2(x: => Int, y: => Int): Int = x + y

// COMMAND ----------

var parametro : Int = 10

// COMMAND ----------

sum(2+3,4*8)

// COMMAND ----------

sum_1(2+3,4*8)

// COMMAND ----------

sum_2(2+3,4*8)

// COMMAND ----------

val a: Int = 1+2+3+4+5+6
def b: Int = 1+2+3+4+5+6

// COMMAND ----------

var var1 : Int = 10

// COMMAND ----------

var1 = 100

// COMMAND ----------

val cons1 : Int = var1 +20
def def1 : Int = var1 + 20

// COMMAND ----------

cons1 

// COMMAND ----------

def1

// COMMAND ----------

// MAGIC %md
// MAGIC val, var o def

// COMMAND ----------

// val evaluates when defined, def - when called:
val test1: () => Int = {
 val r = util.Random.nextInt
 () => r
}


lazy val test3: () => Int = {
 val r = util.Random.nextInt
 () => r
}


def test2: () => Int = {
 val r = util.Random.nextInt
 () => r
}

