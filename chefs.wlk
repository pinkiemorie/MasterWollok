import recetas.*

object paulina {
  const recetasConocidas = [ensalada, risotto]
  var puntuacion = 0

  method recetasConocidas() = recetasConocidas
  method puedeCocinar(receta) = self.conoceReceta(receta)
  method puntuacion() = puntuacion
  method conoceReceta(receta) = recetasConocidas.contains(receta)

  method otorgarPuntuacionPor(receta) {
    if (receta.esAptoVegetariano()) {
      puntuacion += receta.puntuacion() * 2
    }

    else {
      puntuacion += receta.puntuacion() / 2
    }
  }

  method aprender(receta) {
    if (receta.esAptoVegetariano()) {
      recetasConocidas.add(receta)
    }
  }

  method cocinar(receta) {
    if (self.puedeCocinar(receta)) {
      self.otorgarPuntuacionPor(receta)
    }
  }
}

object remy {
  const recetasConocidas = [risotto, paella]
  var puntuacion = 0
  var ratatouilleEstaDisponible = true

  method recetasConocidas() = recetasConocidas
  method puedeCocinar(receta) = recetasConocidas.size() >= 2 and self.conoceReceta(receta)
  method puntuacion() = puntuacion
  method conoceReceta(receta) = recetasConocidas.contains(receta)

  method otorgarPuntuacionPor(receta) {
    if (ratatouilleEstaDisponible) {
      puntuacion += receta.puntuacion() + 5
    }

    else {
      puntuacion += receta.puntuacion()
    }
  }

  method aprender(receta) {
    recetasConocidas.add(receta)
  }

  method cocinar(receta) {
    if (self.puedeCocinar(receta)) {
      self.otorgarPuntuacionPor(receta)
    }
  }

  method ratatouilleNoEstaDisponible() {
    ratatouilleEstaDisponible = false
  }

  method ratatouilleSiEstaDisponible() {
    ratatouilleEstaDisponible = true
  }
}

object christof {
  var recetaConocida = paella
  var puntuacion = 0
  var cantAyudantes = 2

  method recetasConocidas() = recetaConocida
  method puedeCocinar(receta) = cantAyudantes.even() and puntuacion <= 200 and self.conoceReceta(receta) 
  method puntuacion() = puntuacion
  method conoceReceta(receta) = recetaConocida == receta

  method otorgarPuntuacionPor(receta) {
    puntuacion += receta.puntuacion() + 2 * cantAyudantes
  }

  method aprender(receta) {
    recetaConocida = receta
    cantAyudantes += 1
  }

  method cocinar(receta) {
    if (self.puedeCocinar(receta)) {
      self.otorgarPuntuacionPor(receta)
    }
  }
}