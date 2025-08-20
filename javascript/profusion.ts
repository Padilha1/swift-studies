// Question
// Write a function that receives two string parameters s1 and s2 and returns true if they are a permutation of the other, otherwise it should return false.
// Sample
// Returns true (permutations):
// ab, ba
// abc, acb
// aab, aba
// Returns false:
// ab, aa
// ab, aba
// aab, abb

function permutation(s1: string, s2: string): boolean {
  if (s1.length !== s2.length) {
    return false;
  }
  const count = Object.create(null);
  for (const ch of s1) {
    count[ch] = (count[ch] || 0) + 1;
  }
  for (const ch of s2) {
    if (!count[ch]) return false;
    count[ch]--;
  }
  return true;
}

console.log(permutation("aa", "aa"));
console.log(permutation("aa", "ab"));
console.log(permutation("aab", "abb"));
