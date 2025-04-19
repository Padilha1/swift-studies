class Calculadora {
    var x: Double, y: Double = 0.0

    func somar () -> Double{
        return (self.x + self.y)
    }

    func subtrair() -> Double{
        return (self.x - self.y)
    }
    func multiplicar() -> Double{
        return (self.x * self.y)
    }

    func dividir() -> Double{
        if self.x == 0 {
            print("Divisao por Zero!")
        }
        return (self.y / self.x)
    }

    init(x:Double, y:Double){
        self.x = x
        self.y = y
    }
}


var calc = Calculadora(x:10, y:5)
print(calc.somar())
print(calc.subtrair())
print(calc.multiplicar())
print(calc.dividir())