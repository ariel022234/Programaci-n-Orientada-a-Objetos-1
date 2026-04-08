import categorias.*
import bonos.*

object roque {
  var neto = 28000
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0


	method setBonoResultado(nuevoBono) {
	  bonoResultado = nuevoBono
	}
	
	method sueldoNeto() { 
		return 28000
		}
	method sueldo() {
		return self.sueldoNeto() + bonoResultado.monto(roque) + 9000
		
	}
}