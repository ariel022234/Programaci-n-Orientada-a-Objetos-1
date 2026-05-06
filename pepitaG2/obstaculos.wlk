import wollok.game.*

object muro {
  method image() {
    return "muro.png"
  }

  method position() {
    return game.at(5,5)
  }

  method esSolido() {
    return true
  }
  

}

object nido {
  method image() {
    return "nido.png"
  }

  method position() {
    return game.at(7,7)
  }

  method esSolido() {
    return false
  }
}
