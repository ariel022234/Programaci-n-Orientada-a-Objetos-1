object pepita {
  var energia = 100

  method volar(metros) {
    energia = energia - 10 - (metros/10)
  }

  method descansar() {
    energia = energia + 10
  }

  method cansada() {
    return energia < 30
  }


  method comer(alimento) {
    energia = energia + alimento.energiaQueAporta()

  }
}

object alpiste {
  method energiaQueAporta() {
      return 35
  }
}

object manzana {
  var madurez = 0

  method maduracion() {
      if (madurez < 3) {
        madurez = madurez + 1
      }
      else {
        madurez = 0
      }
  }

  method energiaQueAporta() {
        if (madurez < 3) {
          return 20 * madurez
        }
        else {
          return 0
        }

  } 

}