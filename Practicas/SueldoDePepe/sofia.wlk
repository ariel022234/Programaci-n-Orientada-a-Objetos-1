import categorias.*
import bonos.*

object sofia {
    var categoria = gerente
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

	method setBonoResultado(nuevoBono) {
	  bonoResultado = nuevoBono
	}
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
	
	method sueldoNeto() { 
		return categoria.neto() * 1.3
		}
	method sueldo() {
		return self.sueldoNeto() + bonoResultado.monto(sofia)
		
	}
}