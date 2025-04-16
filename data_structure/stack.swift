//Stack -> LIFO (Last In First Out)
/*
Put or push = Append
Pop = Remove
*/

class Node<T> {
    var value: T
    var next: Node?

    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
struct Stack<T> {
    private var top: Node<T>?

    // Insere no topo (push)
    mutating func push(_ value: T) {
        let newNode = Node(value: value)
        newNode.next = top // o novo node aponta para o antigo topo
        top = newNode      // agora o topo é o novo node
    }

    // Remove do topo (pop)
    mutating func pop() -> T? {
        guard let currentTop = top else {
            return nil // pilha vazia
        }
        top = currentTop.next // move o topo para o próximo node
        return currentTop.value
    }

    // Retorna valor no topo sem remover (peek)
    func peek() -> T? {
        return top?.value
    }

    // Verifica se a pilha está vazia
    func isEmpty() -> Bool {
        return top == nil
    }

    // Exibe todos os elementos da pilha
    func printStack() {
        var current = top
        var result = "Top -> "
        while let node = current {
            result += "\(node.value) -> "
            current = node.next
        }
        result += "nil"
        print(result)
    }
}


var stack = Stack<Int>()
stack.push(10)
stack.push(20)
stack.push(30)
stack.printStack() // Top -> 30 -> 20 -> 10 -> nil

print("Pop:", stack.pop() ?? "nil") // Pop: 30
print("Peek:", stack.peek() ?? "nil") // Peek: 20
stack.printStack() // Top -> 20 -> 10 -> nil
