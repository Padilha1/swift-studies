/*
  HashMap (ou Tabela Hash) ≈ Dicionário com complexidade média de O(1)

  Hash Function:
  - É uma função que transforma uma "chave" (ex: "augusto") em um índice numérico.
  - Esse índice é usado para armazenar o "valor" (ex: "azul") no array interno do HashMap.

  Exemplo:
  [("augusto", "azul"), ("bernardo", "vermelho")]
  A função hash transforma "augusto" em um índice, tipo 4, e guarda "azul" lá.

  Cuidado: a função hash deve distribuir bem os dados pra evitar colisões.

  Load Factor (Fator de carga):
  - É a razão entre número de itens armazenados e o tamanho do array interno.
  - Quando o fator de carga atinge um certo limite (ex: 70%), o array é redimensionado (geralmente dobrado)
    para manter a eficiência de O(1).

  Collisions (Colisões):
  - Quando duas chaves diferentes resultam no mesmo índice (hash).
  - Estratégias comuns:
      - Linear Probing: procurar o próximo espaço livre.
      - Separate Chaining: usar listas ligadas em cada posição.

  Nota: HashMap armazena chave + valor. A "chave" é usada para acessar o valor rapidamente.
*/

struct HashMap<Key: Hashable, Value> {
    private typealias Element = (key: Key, value: Value)

    private var buckets: [[Element]]
    private(set) var count = 0

    private var capacity: Int {
        return buckets.count
    }

    private var loadFactor: Double {
        return Double(count) / Double(capacity)
    }

    init(capacity: Int = 8){
        self.buckets = Array(repeating: [], count: capacity)
    }

    private func index(forKey key: Key) -> Int {
        return abs(key.hashValue) % capacity
    }
    func currentCapacity() -> Int {
        return buckets.count
    }
    mutating func set(_ value: Value, forKey key: Key){
        let index = index(forKey: key)

        //Check if key already exists
        for (i, element) in buckets[index].enumerated(){
            if element.key == key {
                buckets[index][i].value = value
                return
            }
        }
        //If not, adds
        buckets[index].append((key:key, value:value))
        count += 1

        if loadFactor > 0.7 {
            resize()
        }
    }

    func get(_ key: Key) -> Value? {
        let index = index(forKey: key)
        for element in buckets[index] {
            if element.key == key {
                return element.value
            }
        }
    return nil
    }

    mutating func remove(_ key: Key){
        let index = index(forKey: key)
        buckets[index].removeAll {$0.key == key}
    }

    private mutating func resize() {
    let newCapacity = capacity * 2
    var newBuckets: [[Element]] = Array(repeating: [], count: newCapacity)

    for bucket in buckets {
        for element in bucket {
            let newIndex = abs(element.key.hashValue) % newCapacity
            newBuckets[newIndex].append(element)
        }
    }

    buckets = newBuckets
}

}



var map = HashMap<String, String>()
// map.set("azul", forKey:"augusto")
// map.set("vermelho", forKey:"bernardo")

// print(map.get("augusto") ?? "não encontrado") // azul
// map.remove("augusto")
// print(map.get("augusto") ?? "não encontrado") // não encontrado

func printStatus(_ message: String) {
    print("\n🔹 \(message)")
    print("🔸 Count: \(map.count)")
    print("🔸 Capacity: \(map.currentCapacity())")
    print("🔸 Load Factor: \(Double(map.count) / Double(map.currentCapacity()))")
}

for i in 1...10 {
    let key = "key\(i)"
    let value = "value\(i)"
    map.set(value, forKey: key)
    print("Inserido: \(key) -> \(value)")
    printStatus("Após inserção de \(key)")
}