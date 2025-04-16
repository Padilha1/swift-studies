class Solution {
    // 4ms LeetCode
    func maximumLengthSubstring(_ s: String) -> Int {
        let characters = Array(s)
        var l = 0
        var r = 0
        var maxLen = 1
        var counter: [Character: Int] = [:]

        counter[characters[0]] = 1

        while r < characters.count - 1 {
            r += 1
            let char = characters[r]

            counter[char, default: 0] += 1

            while counter[char] == 3 {
                counter[characters[l]]! -= 1
                l += 1
            }

            maxLen = max(maxLen, r - l + 1)
        }

        return maxLen
    }
    /* 0ms LeetCode
    func maximumLengthSubstring(_ s: String) -> Int {
    let chars = Array(s)
    var charCounter = [Character: Int]()
    var left = 0
    var res = 0
    for (index, charachter) in chars.enumerated() {
        charCounter[charachter, default: 0] += 1
        while charCounter[charachter, default: 0] > 2 {
            charCounter[chars[left], default: 0] -= 1
            left += 1
        }
        res = max(res, index - left + 1)
    }
    
    return res
    }

    */
}

let s = Solution()
print(s.maximumLengthSubstring("bcbbbcba")) // Output: 4
