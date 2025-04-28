
func bubbleSort(_ arr: inout [Int]) {
    let n = arr.count
    var swapped: Bool

    for i in 0..<n {
        swapped = false
        for j in 0..<(n - i - 1) {
            if arr[j] > arr[j + 1] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
                swapped = true
            }
        }
        // Se não houve trocas nessa passada, a lista já está ordenada
        if !swapped {
            break
        }
    }
}

var array = [5,4,3,2,1]
bubbleSort(&array)
print(array)
