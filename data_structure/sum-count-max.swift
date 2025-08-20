// MARK: - Soma de elementos (Int)

func sum(_ arr: [Int]) -> Int {
    return sumHelper(arr, from: 0)
}

private func sumHelper(_ arr: [Int], from i: Int) -> Int {
    if i == arr.count {
        return 0
    }
    return arr[i] + sumHelper(arr, from: i+1)
}

// MARK: - Contar itens (genérico)

func count<T>(_ arr: [T]) -> Int {
    return countHelper(arr, from: 0)
}

private func countHelper<T>(_ arr: [T], from i: Int) -> Int {
    if i == arr.count {
        return 0
    }
    return 1 + countHelper(arr, from: i + 1)
}

// MARK: - Máximo da lista (retorna opcional se lista vazia)

func maxIn(_ arr: [Int]) -> Int? {
    guard !arr.isEmpty else { return nil }   // escolha: nil p/ vazio
    return maxHelper(arr, from: 1, currentMax: arr[0])
}

private func maxHelper(_ arr: [Int], from i: Int, currentMax: Int) -> Int {
    // Caso-base: varreu tudo? então o currentMax é a resposta
    if i == arr.count {
        return currentMax
    }
    // Passo recursivo: atualiza o máximo e avança
    let newMax = max(currentMax, arr[i])
    return maxHelper(arr, from: i + 1, currentMax: newMax)
}


print(sum([2,4,6]))          // 12
print(sum([]))               // 0
print(sum([-16, 8]))         // -8

print(count([1,2,3,4]))      // 4
print(count([String]()))     // 0

print(maxIn([3,9,2,10,1])!)  // 10
print(maxIn([]) as Any)      // nil
