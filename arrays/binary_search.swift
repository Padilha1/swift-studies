// doubles the array, number of steps does not double.
//
class Solution{
    func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    var lo = 0
    var hi = nums.count
    var steps = 0

    while lo < hi {
        steps += 1
        let mid = (lo + hi) / 2

        if nums[mid] == target {
            print("Passos: \(steps)")
            return mid
        } else if nums[mid] < target {
            lo = mid + 1
        } else {
            hi = mid
        }
    }

    return -1
    }
}
let bs = Solution()
let arr = [1, 3,4, 5, 7, 9, 12, 13, 14, 17, 20]
let resultado = bs.binarySearch(arr, 12)
// Output: Passos: 3, resultado = 5
