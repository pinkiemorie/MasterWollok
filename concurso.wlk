import recetas.*
import chefs.*
object concurso {
  const concursantes = [paulina, remy, christof]
  const recetas = [paella, risotto, ensalada]

  method ganador() = concursantes.max({c => c.puntuacion()})
  method hayChefExperto() = concursantes.any({c => c.puntuacion() > 450})
  method recetasVegetarianas() = recetas.filter({r => r.esAptoVegetariano()})
  method recetaVegetarianaConMasPuntos() = self.recetasVegetarianas().max({r => r.puntuacion()})
  method cantChefsQuePuedenCocinar(receta) = concursantes.count({c => c.puedeCocinar(receta)})
  method listaPuntosOtorgados() = recetas.map({r => r.puntuacion()})

  method prepararConcurso() {
    risotto.cambiarIngredientePrincipal(hongo)
    paella.quitarMariscos()
    hongo.terminarPrimavera()
  }

  method concursantesAprendenReceta(receta) {
    concursantes.forEach({c => c.aprender(receta)})
  }

  method concursantesCocinanReceta(receta) {
    concursantes.forEach({c => c.cocinar(receta)})
  }
}