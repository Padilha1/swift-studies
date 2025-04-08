import Foundation // não precisa do UIKit aqui

print("Olá, usuário. Aqui é um teste inicial em Swift!")

let question = "Qual o valor de 8 x 2?"
print(question)

if let input = readLine(), let answer = Int(input) {
    if answer == 16 {
        print("✅ Acertou! Resultado: \(answer)")
    } else {
        print("❌ Errou! A resposta correta é 16, mas você digitou: \(answer)")
    }
} else {
    print("⚠️ Você não digitou um número válido.")
}
