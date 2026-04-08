import categorias.*
import bonos.*

object ernesto {
    var compañero = null
	var bonoPresentismo = bonoNulo
    const cantidadDeFaltas = 0

    method cantidadDeFaltas() { 
		return cantidadDeFaltas 
		}


	method setBonoPresentismo(nuevoBono) {
	  bonoPresentismo = nuevoBono
	}

    method cambiarCompañero(compañeroNuevo) {
        compañero = compañeroNuevo
    }
	
	method sueldoNeto() { 
		return 28000
		}
	method sueldo() {
		return compañero.sueldoNeto() + bonoPresentismo.monto(ernesto) 
		
	}
}