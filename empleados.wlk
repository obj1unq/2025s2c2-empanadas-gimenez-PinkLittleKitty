object galvan {
    var sueldo = 15000
    var totalCobrado = 0
    var dinero = 0
    var deuda = 0

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }

    method sueldo() {
        totalCobrado = totalCobrado + sueldo
        dinero = dinero + sueldo
        self.pagarDeuda()
        return sueldo
    }

    method totalCobrado() {
        return totalCobrado
    }

    method gastar(_cantidad) {
        if (dinero < _cantidad) {
            deuda = deuda + (_cantidad - dinero)
            dinero = 0
        } else {
            dinero = dinero - _cantidad
        }
    }

    method deuda() {
        return deuda
    }

    method pagarDeuda() {
        if (deuda > 0) {
            if (dinero >= deuda) {
                dinero = dinero - deuda
                deuda = 0
            } else {
                deuda = deuda - dinero
                dinero = 0
            }
        }
    }

    method dinero() {
        return dinero
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