import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { 
		return cantidadDeFaltas 
		}

	method setCantidadDeFaltas(faltas) {
	  cantidadDeFaltas = cantidadDeFaltas + faltas
	}

	
	method setCategoria(nuevaCategoria) {
		categoria = nuevaCategoria
	}
	method setBonoPresentismo(nuevoBono) {
	  bonoPresentismo = nuevoBono
	}
	method setBonoResultado(nuevoBono) {
	  bonoResultado = nuevoBono
	}
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { 
		return categoria.neto() 
		}
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(pepe) + bonoResultado.monto(pepe)
			/* + el bono por presentismo */
			/* + el bono por resultado */
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}
