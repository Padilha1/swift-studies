// Quicksort 3-way otimizado para Array<Element: Comparable>
// - median-of-three para pivot
// - particionamento em 3 vias (lt .. i .. gt)
// - insertion sort para fatias pequenas
// - processamento da menor partição primeiro (reduz a pilha)

extension Array where Element: Comparable {
    mutating func quicksortOptimized() {
        guard count > 1 else { return }
        let SMALL_THRESHOLD = 24

        // Insertion sort in-place para intervalos pequenos
        func insertionSort(_ lo: Int, _ hi: Int) {
            var i = lo + 1
            while i <= hi {
                let key = self[i]
                var j = i - 1
                while j >= lo && self[j] > key {
                    self[j + 1] = self[j]
                    j -= 1
                }
                self[j + 1] = key
                i += 1
            }
        }

        // Retorna o índice do mediano entre lo, mid e hi
        func medianOfThreeIndex(_ lo: Int, _ hi: Int) -> Int {
            let mid = lo + (hi - lo) / 2
            let a = self[lo], b = self[mid], c = self[hi]
            if a < b {
                if b < c { return mid }         
                else if a < c { return hi }     
                else { return lo }              
            } else {
                if a < c { return lo }          
                else if b < c { return hi }     
                else { return mid }             
            }
        }

        @inline(__always)
        func partition3(_ lo: Int, _ hi: Int) -> (Int, Int) {
            let m = medianOfThreeIndex(lo, hi)
            if m != lo { self.swapAt(m, lo) }
            let pivot = self[lo]

            var lt = lo         
            var i  = lo + 1     
            var gt = hi         

            while i <= gt {
                if self[i] < pivot {
                    self.swapAt(i, lt)
                    lt += 1
                    i  += 1
                } else if self[i] > pivot {
                    self.swapAt(i, gt)
                    gt -= 1
                } else { 
                    i += 1
                }
            }
            return (lt, gt) 
        }

        var stack: [(Int, Int)] = [(0, count - 1)]

        while let (lo, hi) = stack.popLast() {
            if hi - lo <= SMALL_THRESHOLD {
                insertionSort(lo, hi)
                continue
            }

            let (lt, gt) = partition3(lo, hi)

            let leftSize  = lt - lo
            let rightSize = hi - gt

            if leftSize < rightSize {
                if lt - 1 > lo   { stack.append((gt + 1, hi)) } 
                if lt - 1 > lo   { stack.append((lo, lt - 1)) } 
                else if gt + 1 < hi 
            } else {
                if gt + 1 < hi { stack.append((lo, lt - 1)) }
                if gt + 1 < hi { stack.append((gt + 1, hi)) }
                else if lt - 1 > lo 
            }
        }
    }
}

// -------- Exemplo de uso --------
var nums = [9, 1, 5, 3, 7, 7, 2, 8, 6, 4, 0, 3, 3, 9, 1]
nums.quicksortOptimized()
// print(nums) // -> ordenado

// Também funciona com tipos comparáveis personalizados
struct P: Comparable { let x: Int; static func < (l: P, r: P) -> Bool { l.x < r.x } }
var ps = [P(x: 3), P(x: 1), P(x: 2)]
print("Antes da ordenação:", ps)
ps.quicksortOptimized()
print("Depois da ordenação:", ps)