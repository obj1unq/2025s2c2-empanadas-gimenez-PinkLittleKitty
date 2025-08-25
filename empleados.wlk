object galvan {
    var sueldo = 15000
    var totalCobrado = 0
    var dinero = 0

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method sueldo() {
        totalCobrado = totalCobrado + sueldo
        dinero = dinero + sueldo
        return sueldo
    }

    method totalCobrado() {
        return totalCobrado
    }

    method gastar(cantidad) {
            dinero = dinero - cantidad
    }

    method deuda() {
        if (dinero < 0) {
            return -dinero
        } else {
            return 0
        }
    }

    method dinero() {
        if (dinero < 0) {
            return 0
        } else {
            return dinero
        }
    }
}

object baigorria {
    var valorEmpanada = 15
    var cantidadDeEmpanasVendidas = 0
    var totalCobrado = 0

    method vender(_cantidad) {
        cantidadDeEmpanasVendidas = cantidadDeEmpanasVendidas + _cantidad
    }

    method sueldo() {
        totalCobrado = totalCobrado + cantidadDeEmpanasVendidas * valorEmpanada
        return cantidadDeEmpanasVendidas * valorEmpanada
    }

    method totalCobrado() {
        return totalCobrado
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