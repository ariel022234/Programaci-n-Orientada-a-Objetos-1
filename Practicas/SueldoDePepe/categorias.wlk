object gerente {
	method neto() = 15000
}

object cadete {
	method neto() = 20000
}

object vendedor {
	var aumentoPorVentas = 1
	
	method neto() = 16000 * aumentoPorVentas
	
	method activarAumentoPorMuchasVentas() {
		aumentoPorVentas = 1.25
	}
	
	method desactivarAumentoPorMuchasVentas() {
		aumentoPorVentas = 1
	}
}

object medioTiempo {
	var neto = 0
	
	method neto() = neto
	
	method categoriaBase(categoria) {
		neto = categoria.neto() / 2
	}
} // agregar cadete






// agregar cadete