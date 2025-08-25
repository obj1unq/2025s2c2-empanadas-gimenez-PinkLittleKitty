object galvan {
    var sueldo = 15000

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method sueldo() {
        return sueldo
    }
}

object baigorria {
    var valorEmpanada = 15
    var sueldo = 0
    var cantidadDeEmpanasVendidas = 0

    method vender(_cantidad) {
        cantidadDeEmpanasVendidas = cantidadDeEmpanasVendidas + _cantidad
    }

    method sueldo() {
        sueldo = sueldo + cantidadDeEmpanasVendidas * valorEmpanada
        return sueldo
    }
}

object gimenez {
    var fondoParaSueldos = 300000

    method fondo() {
        return fondoParaSueldos
    }

    method pagarSueldo(_empleado) {
        fondoParaSueldos = fondoParaSueldos - _empleado.sueldo()
    }
}