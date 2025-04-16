
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
