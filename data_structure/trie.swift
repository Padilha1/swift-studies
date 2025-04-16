class TrieNode {
    var children: [Character: TrieNode] = [:]
    var isEndOfWord = false
}

class Trie {
    private let root = TrieNode()
    
    // Inserir palavra
    func insert(_ word: String) {
        var current = root
        for char in word {
            if current.children[char] == nil {
                current.children[char] = TrieNode()
            }
            current = current.children[char]!
        }
        current.isEndOfWord = true
    }

    // Verifica se a palavra existe
    func search(_ word: String) -> Bool {
        var current = root
        for char in word {
            guard let next = current.children[char] else {
                return false
            }
            current = next
        }
        return current.isEndOfWord
    }

    // Verifica se existe uma palavra que comece com esse prefixo
    func startsWith(_ prefix: String) -> Bool {
        var current = root
        for char in prefix {
            guard let next = current.children[char] else {
                return false
            }
            current = next
        }
        return true
    }
}


let trie = Trie()

trie.insert("casa")
trie.insert("casaco")
trie.insert("carro")
trie.insert("caminho")

print(trie.search("casa"))    
print(trie.search("cas"))      
print(trie.startsWith("cas"))  
print(trie.startsWith("cav"))  
print(trie.startsWith("cam"))  
