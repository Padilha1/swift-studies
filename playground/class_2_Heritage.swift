
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
    var possuiCartaoDebito: Bool 
    func solicitarDebito(){
        possuiCartaoDebito = true
        print("Cliente esta solicitando cartao de debito")
    }

    init(nome:String, possuiCartaoDebito:Bool){
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome:"Matheus", possuiCartaoDebito:false)

contaPoupanca.depositar(500)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("Cliente esta solicitando emprestimo no valor de R$ \(valor)")
        super.depositar(valor)
   }
}

var contaCorrente = ContaCorrente(nome:"Ana")
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)