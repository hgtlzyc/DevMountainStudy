import UIKit

//MARK: - Part One
let firstName = "Lee"
let lastName = "Xu"
var age = 1
let birthday = "Nov01"
var preferedWandLength = "150cm"
var preferedHouse = "Hogwarts"
var character = "Loyal"
var isTiredHPReference = false

//MARK: - Part Two
var goldInMyVault = 150.0
goldInMyVault -= 24.3
goldInMyVault -= 45
goldInMyVault += 300
goldInMyVault *= 2
goldInMyVault *= (1.0 - 0.1)

//MARK: - Part Three
//choosing an owl at the Eeylops Owl Emporium
var beakColorOfOwl = "Black"
var featherColorOfOwl = "White"

if beakColorOfOwl.lowercased() == "black" && featherColorOfOwl.lowercased() == "white" {
    print("This one’s mine!")
    
} else {
    print("Pass")
}

//if it is sponsored by Holyhead Harpies
let isSponsoredByHH = true

if isSponsoredByHH == true {
    print("Buy!")
}


//appropriately place students

let studentCharacter = "brave"

if studentCharacter == "cunning" || studentCharacter == "ambitious" {
    print("go Slytherin")
} else if studentCharacter == "brave" {
    print("go Gryffindor")
} else if studentCharacter == "Loyal" {
    print("go Hufflepuff")
} else if studentCharacter == "great wit" {
    print("go Ravenclaw")
} else {
    print("go home")
}

//MARK: - Part Four
//Honeydukes sells their Fizzing Whizzbees
func buyFW(withAmount qt: Int) {
    let cost = Double(qt) * 2.0
    
    if goldInMyVault - cost >= 0.0 {
        goldInMyVault -= cost
        
    } else {
        print("need more gold")
    }
}

//buy some Chocolate Frogs
func buyCFForWholeFamily(sizeOfFamily qt: Int) {
    let cost = Double(qt) * 3.0
    
    if goldInMyVault - cost >= 0.0 {
        print("We’ll take the lot.")
        goldInMyVault -= cost
        
    } else {
        print("No thanks, I’m all set.")
    }

}

//MARK: - Part Five
//bookPrices

var bookPrices = [12, 15, 22, 10, 8, 17]

for price in bookPrices {
    if price > 15 {
        print("This book is expensive!")
        
    } else {
        print("This book isn’t too bad.")
    }
}

//as many Pixie Puffs as you can get.

var totalPixiePuff = 0

while goldInMyVault - 3.0 > 0 {
    goldInMyVault -= 3.0
    totalPixiePuff += 1
}

print(totalPixiePuff)
print(goldInMyVault)










