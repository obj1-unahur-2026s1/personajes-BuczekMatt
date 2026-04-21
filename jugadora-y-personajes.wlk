import armas.*

object luisa {
  var personajeActual = floki

  method asignarPersonajeActual(personaje) { personajeActual = personaje }
  method aparece(elemento) { personajeActual.encontrar(elemento) }
}

object floki {
  var armaActual = ballesta

  method cambiarArma(arma) { armaActual = arma }
  method encontrar(elemento) {
    armaActual.usar()
    elemento.recibirAtaque(armaActual.potencia())
  }
}

object mario {
  var valorRecolectado = 0
  var ultimaAltura = 0

  method esFeliz() = valorRecolectado >= 50 or ultimaAltura >= 10

  method encontrar(elemento) {
    ultimaAltura = elemento.altura()
    valorRecolectado += elemento.valorQueOtorga()
    elemento.recibirTrabajo()
  }
}
