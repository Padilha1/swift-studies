

func firstUniqChar(_ s: String) -> Int {
    var map: [Character: (index: Int, count: Int)] = [:]
    let chars = Array(s)

    for (i, c) in chars.enumerated() {
        if let value = map[c] {
            map[c] = (value.index, value.count + 1)
        } else {
            map[c] = (i, 1)
        }
    }

    var minIndex = Int.max

    for (_, value) in map {
        if value.count == 1 {
            minIndex = min(minIndex, value.index)
        }
    }

    return minIndex == Int.max ? -1 : minIndex
}


let index = firstUniqChar("leetcode") // retorna 0
print("Índice do primeiro caractere único: \(index)")

// if let result = firstUniqCharAndIndex("swiss") {
//     print("Caractere único: \(result.char), índice: \(result.index)")
// } else {
//     print("Nenhum caractere único encontrado.")
// }

//  var result: (Character, Int)? = nil
//     var minIndex = Int.max

//     for (char, value) in map {
//         if value.count == 1 && value.index < minIndex {
//             minIndex = value.index
//             result = (char, value.index)
//         }
//     }

//     return result


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]()

    for (i, num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = map[complement]{
            return [complementIndex, i]
        }
        map[num] = i
    }
    return []
}

print(twoSum([2, 7, 11, 15], 9))
print(twoSum([3, 2, 4], 6))
print(twoSum([3, 3], 6))