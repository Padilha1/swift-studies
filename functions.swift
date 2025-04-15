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


func pagarConta(_ valor: Double, _ pessoas: Int) -> Double{
    let valorComTaxa = valor * 1.1
    return valorComTaxa / Double(pessoas)
}


let totalParaCadaPessoa = pagarConta(150, 4)
print(totalParaCadaPessoa)