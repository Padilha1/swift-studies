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

    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var seen = Set<Int>()

        for i in 0..<nums.count {
            if seen.contains(nums[i]){
                return true
            }
            seen.insert(nums[i])
            if i >= k {
                seen.remove(nums[i - k])
            }
        }

        return false
    }

    /*
        { 
            var dict: [Int: Int] = [:]

            dict.reserveCapacity(nums.count)

            for (i, value) in nums.enumerated() {

                if nil != dict[value], i - dict[value]! <= k {
                    return true
                }
                dict[value] = i
            } 

            return false
        }
    */
}

let s = Solution()
print(s.maximumLengthSubstring("bcbbbcba")) // Output: 4

let nums1 = [1,2,3,1]
let nums2 = [1,0,1,1]
let nums3 = [1,2,3,1,2,3]

print(s.containsNearbyDuplicate(nums3,2))