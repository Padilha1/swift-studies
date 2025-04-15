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
if let primeiroCaracter = telefone?.first {
    print(telefone?.first)

}

// nil coalescing 

print (telefone ?? "Nao ha valor para telefone")

// Atividade
let numero: String = "10"
let inteiro = Int(numero)
print(inteiro + 1)