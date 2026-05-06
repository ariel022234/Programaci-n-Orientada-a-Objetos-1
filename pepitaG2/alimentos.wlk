import aves.*
import wollok.game.*

class Alpiste {
  var property position 
  

   method image() {
    return "alpiste.png"
  }

  method position() {
    return position
  }


  method energiaQueAporta() {
    return 20
  }

  method esSolido() {
    return false
  }
}

class Manzana {
  var property position 
  var property madurez = 1
	const property base = 5

  method image() {
    return "manzana.png"
  }

  method madurar(algunaManzana) {
  if (madurez < 3) {
		madurez = madurez + self.energiaQueAporta() * 0.1
  }
  else {
    game.removeVisual(algunaManzana)
  }	
  }

  method energiaQueAporta() {
     return base * madurez
  }

  method esSolido() {
    return false
  }
}

object spawnAlpiste {
  method generar() {
    const x = 0.randomUpTo(game.width()).truncate(0)
    const y = 0.randomUpTo(game.height()).truncate(0)
    self.nuevoAlpiste(x, y)
    

    
  }

  method nuevoAlpiste(x,y) {
      const unAlpiste = new Alpiste(position = game.at(x,y))
      game.addVisual(unAlpiste)
    }
}

object spawnManzana {
  method generar() {
    const x = 0.randomUpTo(game.width()).truncate(0)
    const y = 0.randomUpTo(game.height()).truncate(0)

    self.nuevaManzana(x, y)
}

  method nuevaManzana(x,y) {
      const unaManzana = new Manzana(position = game.at(x,y))
      game.addVisual(unaManzana)
      game.onTick(3000, "Maduracion", {unaManzana.madurar(unaManzana)})
    }
}

object spawnAlimento {
  method generar() {
    if (50.randomUpTo(100).truncate(0) < 50) {
      spawnAlpiste.generar()
    }
    else {
      spawnManzana.generar()
    }
  }
}
