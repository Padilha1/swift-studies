// for _ in 1...10 {
//     print("Amo Swift")
// }

// var count = 1 
// while count <= 10 {
//     print ("Amo Swift no while")
//     count += 1
// }

// repeat {
//     print ("Amo Swift com Repeat While")
// } while count <= 10


// var soma = 1
// var count = 0
// repeat {
//     soma += 3
//     count += 1
// } while(count < 5)

// print(soma)


// BREAK e CONTINUE 
//break 
// var count = 1

// while count <= 10 { 
//     if count == 5 { 
//             break
//     } 
//     print(count) 
//     count += 1
// }
//continue
// var count = 1

// while count <= 10 {
//     count += 1
//     if count == 5 { 
//             continue
//     } 
//     print(count) 
// }

//atividade 
var count2 = 0
while count2 <= 10 {
    count2 += 1
    if count2 % 2 != 0 {continue}
    print(count2)
}