
class Conta {
    var saldo: Double = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
         saldo -= valor
    }

    func depositar (_ valor: Double) {
       saldo += valor
   }

    init(nome: String){
        self.nome = nome
    }

}


class ContaPoupanca: Conta {
    var possuiCartaoDebito = false
    func solicitarDebito(){
        possuiCartaoDebito = true
        print("Cliente esta solicitando cartao de debito")
    }

}

var contaPoupanca = ContaPoupanca(nome:"Matheus")

contaPoupanca.depositar(500)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("Cliente esta solicitando emprestimo no valor de R$ \(valor)")
    }
}

var contaCorrente = ContaCorrente(nome:"Ana")
contaCorrente.solicitarEmprestimo(20000)