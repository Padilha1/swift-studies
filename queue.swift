/*
    First In, First Out (primeiro a entrar, primeiro a sair)

    1. A pessoa entra no final da fila → push()
    2. A pessoa sai pela frente da fila → pop()
    3. Você pode olhar quem está na frente da fila → peek()

    push: O(1) — adicionar ao final do array é eficiente.
    pop: O(n) — removeFirst() é O(n) pois realoca os índices. (melhor usar uma deque se performance for crítica).
    peek: O(1)
*/

struct Queue<T> {
    private var elements: [T] = []

    mutating func push(_ element: T){
        elements.append(element)
    }

    mutating func pop(){
        elements.removeFirst()
    }

    func peek() -> T? {
        return elements.first
    }
}

var q = Queue<Int>()
q.push(2)
q.push(3)
q.push(4)

q.pop()

print("Primeiro da fila: \(q.peek() ?? -1)")
