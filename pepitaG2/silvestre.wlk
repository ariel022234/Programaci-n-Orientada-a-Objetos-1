import aves.*
import wollok.game.*


object silvestre {

  method image() {
    return "silvestre.png"
  }

  method position() {
    return game.at(3.max(self.posicionDePepita()),0) 
  }

  method esSolido() {
    return false
  }


  method posicionDePepita() {
    return pepita.position().x()  // Trae la posicion de pepita en el eje x
  }
  
}