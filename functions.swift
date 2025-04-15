//Optionals

var telefone: String?
telefone  = "99999999"

if telefone != nil {
    print(telefone!)
}

var celular: String?
celular = "88888888"

//optional binding
if let telefoneDesembrulado = telefone,
    let celular = celular {
    print (telefoneDesembrulado)
    print(celular)
}

func autenticar (usuario: String?, senha: String?) {
    guard let usuario = usuario, let senha = senha 
    else {return}
    print (usuario)
    print (senha)
}

autenticar (usuario: "Lucas", senha: "123456")  

//optional chaining 
// if let primeiroCaracter = telefone?.first {
//     print(primeiroCaracter)
// }

// nil coalescing 

// print (telefone ?? "Nao ha valor para telefone")

// Atividade
// let numero: String = "10"
// let inteiro = Int(numero)
// print(inteiro + 1)

//atividade 2

func recebeNome (nome: String?){
    print(nome ?? "Nome nao informado")
}

recebeNome(nome: "Lucas")
recebeNome(nome: nil)


func pagarConta(valor: Double?, pessoas: Int?){
    guard let valor = valor, let pessoas = pessoas 
    else { print("Informacoes faltando")
        return
    }
    let garcom: Double = 0.10
    let total = valor + (valor * garcom)

    let valorPorPessoa = total / Double(pessoas)
    print("Valor total: \(total)")
}


pagarConta(valor:120.0, pessoas: 4)