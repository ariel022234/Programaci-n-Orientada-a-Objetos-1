import aves.*
import wollok.game.*

object jugando {
  method image(ave) {
    return ave.toString() +  ".png"
  }
}

object derrota {
  method image(ave) {
   return ave.toString() + "-gris.png"
  }
}

object victoria {
  method image(ave) {
    return ave.toString() +  ".png"
  }
}

