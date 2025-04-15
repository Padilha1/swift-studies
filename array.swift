// Arrays

var notas: [Double] = [8.5, 9.0, 7.2, 6.0]
// var notas = [8.5, 9.0, 7.2, 6.0, "5"] ==> DA ERRO

var vazio: [String] = []
var vazio2 = Array<String>()

// print(notas.isEmpty)
// print(notas.count)


notas.append(10) // OU notas += [7]
notas.insert(4, at: 0)
// notas.removeLast()
// notas.remove(at: 2)

// print(notas)
//i in 0...notas.count ==> Erro de Index OutOfRange
for i in 0..<notas.count {
    print(notas[i])
}

for ( index,element) in notas.enumerated() {
    print(index, element)
}

//atividade 1
// let array1 = [Int]()
// let array2 = []
// let array3: [String] = []
// let array4 = [1, 2, 3]
// print(array4[0])
// array4.append(5)


var nomes = ["Giovanna", "Ana", "João", "Caio"]


var nomes2: Set<String> = ["Giovanna", "Ana", "João", "Caio", "João"]
print(nomes2.contains("Ana")) // TRUE
print(nomes2.insert("maria chiquinha"))
print(nomes2.remove("Ana"))


//Tuples
typealias Coordenadas = (x: Int, y: Double, z: Double)

var coordenadas: Coordenadas = (x: 5,y: 3.5, z: 8.0)
print(coordenadas.0)
print(coordenadas.y)
print(coordenadas.z)


var pessoa = (nome: "Giovanna", idade: 22)
//Desestruturação
var (nome, idade) = pessoa


//Dicionario
var pontuacao = [
    "Giovanna": 10,
    "Ana": 8,
    "João": 9,
    "Caio": 7
]
//Nao pode repetir a chave (nome nesse caso)

var pessoas: [String: Int] = [:]
// pessoas.reserveCapacity(10) // reserva espaco para 10 elementos

print(pontuacao["Ana"]) // Optional(8)
print(pontuacao.isEmpty)
pontuacao["clara"] = 11
pontuacao.updateValue(50, forKey: "Ana")
print(pontuacao)
// pontuacao.removeValue(forKey: "Ana")

for (key, value) in pontuacao {
    print("O usuario \(key) tem \(value) prontos")
}
//keys
// for nome in pontuacao.keys {
//     print(nome)
// }
// for pontos in pontuacao.values {
//     print(pontos)
// }


func exibeEstado(_ estados: [String: String]) {
    for estado in estados.values {
        if estado.count > 8 {
            print(estado)
        }
    }
}

let estados = ["SP": "São Paulo",
               "CE": "Ceará",
               "RJ": "Rio de Janeiro"]
exibeEstado(estados)