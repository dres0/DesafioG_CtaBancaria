
# ● Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta
# con un prefijo '1-' si es vip y '0-' si no lo es.
# Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver
# '1-00112233'. (1 Punto)

class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_de_usuario, cuenta, vip = 0)
        raise RangeError, 'el numero de cuenta no tiene 8 dígitos' if cuenta.digits.count != 8
        @nombre_de_usuario = nombre_de_usuario
        @cuenta = cuenta
        @vip = vip
    end
    def numero_de_cuenta
        "#{@vip}-#{@cuenta}"
    end
end

puts CuentaBancaria.new('Andres', 10112233, 1).numero_de_cuenta