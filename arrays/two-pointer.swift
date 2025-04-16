// 2 ponteiros e manipula-los 
// Reversed words 

var chars: [Character] = ["c", "a", "r", " ", "a", "r", "t"]

func reverseCharacters(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1

    while left < right {
        s.swapAt(left, right)
        left += 1
        right -= 1
    }
}

// Teste
// var chars: [Character] = ["c", "a", "r", " ", "a", "r", "t"]
// reverseCharacters(&chars)
// print(String(chars)) // Output: "tra rac"

//44ms
func reverseWords(_ s: String) -> String {
    let words = s.split(separator: " ")
    let reversedWords = words.map { String($0.reversed()) }
    return reversedWords.joined(separator: " ")
}
// 36ms leet code
class Solution {
    func reverseWords(_ s: String) -> String {
        s.split(separator: " ").map { String($0.reversed()) }.joined(separator: " ")
    }
}
// 19ms leet code
class Solution2 {
    func reverseWords(_ s: String) -> String {
        var s = Array(s)
        var lo = 0

        for hi in 1..<s.count {
            if (s[hi] == " " || hi == s.count-1), lo < hi {
                var (l, r) = (lo, s[hi] == " " ? hi-1 : hi)
                while l < r {
                    s.swapAt(l, r)
                    l += 1
                    r -= 1
                }
                lo = s[hi] == " " ? hi+1 : hi
            }
        }

        return String(s)
    }
}

// Teste
let frase = "hello world"
print(reverseWords(frase)) // Output: "olleh dlrow"
