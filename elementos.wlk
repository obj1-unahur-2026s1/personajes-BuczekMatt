object castillo{
    var nivelDeDefensa = 150
    method altura() = 20
    method valorQueOtorga() = nivelDeDefensa*0.2

    method recibirAtaque(potencia) {
      nivelDeDefensa -= potencia 
    }

    method recibirTrabajo() {
      nivelDeDefensa = 200.min(nivelDeDefensa + 20)
    }
}
object aurora{
    var estaViva = true
    method altura() = 1
    method valorQueOtorga() = 15


    method recibirTrabajo() {}
    method recibirAtaque(potencia) {
      if (potencia >=10) estaViva = false
    }
}
object tipa{
    var altura = 8
    method valorQueOtorga() = altura*2
    method altura() {return altura}

    method recibirTrabajo() {altura += 1}
    method recibirAtaque(potencia) {}
}