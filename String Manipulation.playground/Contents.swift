import UIKit

var myName = "Gallagher"
var smallerString = "laugh"

//contains
print("CONTAINS")
if myName.contains(smallerString){
    print("\(myName) contains \(smallerString)")
}
else{
    print("There is no \(smallerString) in \(myName)")
}

//hasPrefix + hasSuffix

var occupation = "Real Estate Developer"
var searchString = "Swift"

print("\nPREFIX SEARCH")

if occupation.hasPrefix(searchString){
    print("You're hired!")
}
else{
    print("No job for you")
}

print("\nSUFFIX SEARCH")
occupation = "iOS Hater"
searchString = "Developer"

if occupation.hasSuffix(searchString) {
    print("You're hired! We need more \(occupation)s")
}
else{
    print("No job for you. No one needs any \(occupation)s.")
}

// .removeLast()
print("\nREMOVE LAST")
var bandName = "The White Stripes"
let lastChar = bandName.removeLast()
print("After we remove \(lastChar) the band is just \(bandName)")

// .removeFirst(k: Int)
print("\nREMOVE FIRST #")
var person = "Dr. Nick"
let title = "Dr."
person.removeFirst(title.count + 1)
print(person)

// .replacingOccurances(of: with:)
print("\nREPLACING OCCURANCES OF")

//123 James St.
//123 James St
//123 James Street


var address = "123 James St."
var streetString = "St."
var replacementString = "Street"

var standardAddress = address.replacingOccurrences(of: streetString, with: replacementString)
print("Original: ", address, "\nReplacement: ", replacementString)

//What would you do if we had 123 St. James St.? See Exercises after chapter....

//Iterate Through a String
print("\nBACKWARDS STRING")

var name = "Gallaugher"
var backwardsName = ""

for letter in name {
    backwardsName = String(letter) + backwardsName
}

print("\(name), \(backwardsName)")


//Capitalization
print("\nPLAYING WITH CAPS")
var crazyCaps = "SwIfT DeVeloPEr"
var upperCased = crazyCaps.uppercased()
var lowerCased = crazyCaps.lowercased()
var capitalized = crazyCaps.capitalized

print(upperCased, lowerCased, capitalized)
print(crazyCaps)

//Word to Guess
print("\nWORD TO GUESS")
var wordToGuess = "SWIFT"
var revealedWord = "_"
for _ in 1...wordToGuess.count - 1 { // _ is an unused placeholder
    revealedWord = revealedWord + " _"
}
//revealedWord.removeLast()
print("\(wordToGuess) will be shown as '\(revealedWord)'")

//Create a string from a repeating value
revealedWord = "_" + String(repeating: " _", count: wordToGuess.count-1)
print("using repeating String: '\(revealedWord)'")

//REVEAL THE WORD
print("\nREVEAL THE WORD")
wordToGuess = "STARWARS"
var lettersGuessed = "SQFTXW"
revealedWord = ""
//loop through all letter in wordToGuess
for letter in wordToGuess{
    //check if letter in wordToGuess is in lettersGuessed
    if lettersGuessed.contains(letter){
        //if so, add this letter and a blank space to revealedWord
        revealedWord += "\(letter) "
    }
    else{
        //if not, add an underscore + a blank space, to revealedWord
        revealedWord += "_ "
    }
}
revealedWord.removeLast()
print("Word to guess = '\(wordToGuess)'")
print("Letters guessed = '\(lettersGuessed)'")
print("Revealed word = '\(revealedWord)'")

let toughGuys = "thugs"
let loveable = "hugs"
print(toughGuys.hasSuffix(loveable))

