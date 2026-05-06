import obstaculos.*
import silvestre.*
import estados.*
import wollok.game.*

object pepita {

	var property energia = 1000 //El getter y setter solo lo necesito para testear
	var position = game.origin()
	var estado = jugando


	method image() { //metodo necesario para wollok game
		return estado.image(self)
	}
	

	method position() { //metodo necesario para wollok game
		return position
	}

	method position(_position) { //el setter solo lo necesito para testear
		position = _position 
	}


	method text() { //metodo opcional para mostrar un texto en wollok game
		return energia.toString()
	}

	method textColor() { //metodo opcional para definir el color del texto (RGBA)
		return "FF0000FF"
	}
	
	method volar(distancia) {
		self.validarVolar(distancia)
    	energia = energia - self.energiaQueGastaAlVolar(distancia)
  	}

	method validarVolar(distancia) {
		if (not self.puedeVolar(distancia)) {
			self.error("No tengo energia para volar " + distancia)
		}
	}

	method puedeVolar(distancia) {
		return energia >= self.energiaQueGastaAlVolar(distancia)
	}

	method energiaQueGastaAlVolar(distancia) {
		return 9 * distancia 
  	}


	method estaCansada() {
	  return energia < 9
	}

	method validarAtravesar(direccion) {
	   const objetosEnDestino = game.getObjectsIn(direccion)  //Logica muro solido
	   if(objetosEnDestino.esSol)) {
			self.error("No puedo pasido(ar")
	   }
	}

	

	method mover(direccion) {
		const nuevaPosition = direccion.siguiente(position) //No modifico la position en la primera linea porque volar podría lanzar error
		self.validarAtravesar(nuevaPosition)
		self.volar(1) //asume que cada celda está a 10 km
		position = nuevaPosition //ahora si puedo modificar la posicion
	}

	method comer(alimento) {
	  energia += alimento.energiaQueAporta()
	}






	

}

