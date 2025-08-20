function hasUnique_char(str: string): boolean {
  if (str.length < 1) return true;
  return new Set(str).size === str.length;
}

console.log("==Unique Characters==");
console.log(hasUnique_char("abcde"));
console.log(hasUnique_char("abcefcdae"));

// function invertString(str: string): string {
//   if (str.length <= 1) return str;
//   return str.split("").reverse().join("");
// }

// //Recursao
// function invertString2(str: string): string {
//   if (str.length <= 1) return str;
//   return invertString2(str.slice(1)) + str[0];
// }

// console.log("==Invert String==");
// console.log(invertString("abcde"));
// console.log(invertString2("a"));

// function isPalindrome(str: string): boolean {
//   const limpo = str.toLowerCase().replace(/[^a-z0-9]/g, "");
//   return limpo === limpo.split("").reverse().join("");
// }

// console.log("==Palindromes==");
// console.log(isPalindrome("radar"));
// console.log(isPalindrome("A man, a plan, a canal: Panama"));

// function charCount(str: string): Record<string, number> {
//   const count: Record<string, number> = {}; //<-- HASH MAP
//   for (const char of str) {
//     count[char] = (count[char] || 0) + 1;
//   }
//   return count;
// }

// console.log("==Character Count==");
// console.log(charCount("hello"));
// console.log(charCount("character"));

// function areAnagrams(a: string, b: string): boolean {
//   const normalize = (s: string) => s.toLowerCase().split("").sort().join("");
//   return normalize(a) === normalize(b);
// }

// function reverseWords(sentence: string): string {
//   return sentence
//     .split(" ")
//     .map((word) => word.split("").reverse().join(""))
//     .join(" ");
// }
