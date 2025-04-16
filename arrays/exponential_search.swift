/*
    🔍 Verifica se o primeiro elemento é o alvo.
    🚀 Se não for, dobra o índice i exponencialmente até:
        - Achar um valor maior ou igual ao target
        - Ou sair do array
    🧮 Aplica busca binária no intervalo entre i/2 e min(i, n-1)
*/


func binarySearch<T: Comparable>(_ arr: [T], _ target: T, lo: Int, hi: Int) -> Int {
    var low = lo
    var high = hi

    while low <= high {
        let mid = (low + high) / 2
        if arr[mid] == target {
            return mid
        } else if arr[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }

    return -1
}

func exponentialSearch<T: Comparable>(_ arr: [T], _ target: T) -> Int {
    if arr.isEmpty {
        return -1
    }

    if arr[0] == target {
        return 0
    }

    var i = 1
    let n = arr.count

    while i < n && arr[i] < target {
        i *= 2
    }

    let upper = min(i, n - 1)
    let lower = i / 2

    return binarySearch(arr, target, lo: lower, hi: upper)
}


let numbers = [1, 2, 3, 6, 7, 9, 11, 15, 18, 22, 25, 30, 33, 40]
let index = exponentialSearch(numbers, 22)
print("Encontrado no índice: \(index)")  // 9
