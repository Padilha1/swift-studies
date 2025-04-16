
// struct ContaCorrente {
//     var saldo = 0.0
//     var nome: String

//     mutating func sacar(_ valor: Double) {
//         saldo -= valor
//     }

//     mutating func depositar (_ valor: Double) {
//         saldo += valor
//     }

// }



class ContaCorrente {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) {
         saldo -= valor
    }

    func depositar (_ valor: Double) {
       saldo += valor
   }

    init(nome: String){
        saldo = 0.0
        self.nome = nome
    }

}

var contaCorrenteMatheus = ContaCorrente(nome: "Matheus")
print(contaCorrenteMatheus.saldo)
contaCorrenteMatheus.depositar(3000)
print(contaCorrenteMatheus.saldo)

var contaCorrenteCaio = ContaCorrente(nome: "Caio")
print(contaCorrenteCaio.saldo)
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)