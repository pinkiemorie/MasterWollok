object paella {
  var tieneMariscos = true

  method puntuacion() = if (tieneMariscos) 8 else 6
  method esAptoVegetariano() = not tieneMariscos

  method ponerMariscos() {
    tieneMariscos = true
  }

  method quitarMariscos() {
    tieneMariscos = false
  }
}

object risotto {
  var ingredientePrincipal = hongo

  method puntuacion() = ingredientePrincipal.puntuacionQueOtorga()
  method esAptoVegetariano() = ingredientePrincipal.esAptoVegetariano()

  method cambiarIngredientePrincipal(ingredienteAPoner) {
    ingredientePrincipal = ingredienteAPoner
  }
}

object hongo {
  var esPrimavera = true

  method puntuacionQueOtorga() = if (esPrimavera) 16 else 12
  method esAptoVegetariano() = true

  method empezarPrimavera() {
    esPrimavera = true
  }

  method terminarPrimavera() {
    esPrimavera = false
  }
}

object pollo {
  method puntuacionQueOtorga() = 8
  method esAptoVegetariano() = false
}

object ensalada {
  method puntuacion() = 10
  method esAptoVegetariano() = true
}