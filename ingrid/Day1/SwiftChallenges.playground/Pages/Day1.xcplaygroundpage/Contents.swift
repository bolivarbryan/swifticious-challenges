//: [Previous](@previous)

import Foundation

/*
 Write a function that accepts a String as its only parameter, and returns true if the string has
 only unique letters, taking letter case into account.
 Sample input and output
 • The string “No duplicates” should return true.
 • The string “abcdefghijklmnopqrstuvwxyz” should return true.
 • The string “AaBbCc” should return true because the challenge is case-sensitive.
 • The string “Hello, world” should return false because of the double Ls and double Os.
 
 For this initial challenge I’ll write some test cases for you, so that you have something to use in the future. These four assert() statements should all evaluate to true, and therefore not trigger an error:
 
 assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
 assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
 assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
 assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")
 
 */

func challenge1(input: String) -> Bool {
    
    let characters = Array(input)
    var duplicatesCharacters = [String.Element: Int]()
    
    for charValue in characters {
        if var duplicateValue = duplicatesCharacters[charValue] {
            duplicateValue += 1
            duplicatesCharacters[charValue] = duplicateValue
        } else {
            duplicatesCharacters[charValue] = 1
        }
    }
    
    return duplicatesCharacters.filter { $0.value == 1 }.count == characters.count
}



assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")

