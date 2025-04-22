
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

    override func sacar(_ valor: Double){
        saldo -= valor + 10
    }
    init(nome:String, possuiCartaoDebito:Bool){
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome:"Matheus", possuiCartaoDebito:true)

contaPoupanca.depositar(500)
print(contaPoupanca.saldo)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
// contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double){
        print("Cliente esta solicitando emprestimo no valor de R$ \(valor)")
        super.depositar(valor)
   }
   override func sacar(_ valor:Double){
        saldo -= valor + 5
   }
}

var contaCorrente = ContaCorrente(nome:"Ana")
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)
contaCorrente.sacar(200)
print(contaCorrente.saldo)

func exibeSaldoDaConta(_ conta: Conta){
    if conta is ContaCorrente {
        print("Conta Corrente: \(conta.saldo)")
    }
    if let contaCorrente = conta as? ContaCorrente{
        contaCorrente.solicitarEmprestimo(1000)
    }
    guard let contaPoupanca = conta as? ContaPoupanca else {return}
    print(contaPoupanca.possuiCartaoDebito)
    
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)