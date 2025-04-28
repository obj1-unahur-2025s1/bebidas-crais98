object tito {
  var bebidaActual = 0
  var cantidadConsumida = 0

  method peso() = 70 
  method consumir(cantidad, bebida) {
    cantidadConsumida = cantidad
    bebidaActual = bebida
  }
  method bebidaConsumida()= bebidaActual
  method bebidaConsumida(unaBebida) {
    bebidaActual = unaBebida
  }

  method cantidadConsumida() = cantidadConsumida 

  method velocidad(){
    return (bebidaActual.rendimiento(cantidadConsumida) * 490) / self.peso()
  }
    // consumir(2, whisky) 0,9^2 =0,81 *490= 396,9/70 = 5,67
   // consumir(2, terere) 0,1*2= 1 * 490 = 490/70 = 7
   // consumir(2, cianuro) 0 *490 = 0/7 = 0

}


object whisky {
  
  method rendimiento(cantidad) = 0.9 ** cantidad
}

object terere {
  method rendimiento(cantidad)=
    (0.1 * cantidad).max(1)
}

object cianuro {
  method rendimiento(cantidad)= 0
  
}