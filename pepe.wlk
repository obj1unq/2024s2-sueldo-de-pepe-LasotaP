object pepe {
	var categoria = cadete
    var bonoXResultado = nulo
    var bonoXPresentismo = nulo
    var property faltas = 0

    method categoria(_categoria) {
      categoria = _categoria
    }

    method bonoXPresentismo(_bonoXPresentismo) {
      bonoXPresentismo = _bonoXPresentismo
    }

    method bonoXResultado(_bonoXResultado) {
      bonoXResultado = _bonoXResultado
    }

    method extraResultado() {
      return bonoXResultado.valor(self)
    }

    method extraPresentismo() {
      return bonoXPresentismo.valor(self)
    }

    method neto() {
      return categoria.neto()
    }

    method sueldo() {
      return self.neto() + self.extraResultado() + self.extraPresentismo()
    }
}


//categoria
object cadete {
    method neto() {
      return 20000
    }
}
object gerente {
    method neto() {
      return 15000
    }
}


// Bonos por resultado
object montoFijo {
  method valor(empleado) {
    return 800
  }
}
object nulo {
  method valor(empleado) {
    return 0
  }
}
object porcentaje {
  method valor(empleado) {
    return empleado.neto() * 0.1
  }
}

// Bonos por presentismo
object presentismoNulo {
  method valor(empleado) {
   return  0
  }
}
object normal {
  method valor(empleado) {
    if (empleado.faltas() == 0) {
        return 2000
    }
    if (empleado.faltas() == 1) {
        return 1000
    }
    return 0
  }
}
object ajuste {
  method valor(empleado) {
    return if(empleado.faltas() == 0) 100 else 0 
  }
}
object demagogico {
  method valor(empleado) {
    return if (empleado.neto() < 18000) 500 else 300
  }
}
