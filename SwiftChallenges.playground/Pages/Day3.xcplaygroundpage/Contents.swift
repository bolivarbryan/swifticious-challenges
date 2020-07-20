import Foundation

/*
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 
 Sample input and output
 • The strings “abca” and “abca” should return true.
 • The strings “abc” and “cba” should return true.
 • The strings “ a1 b2 ” and “ b1 a2 ” should return true.
 • The strings “abc” and “abca” should return false.
 • The strings “abc” and “Abc” should return false.
 • The strings “abc” and “cbAa” should return false.
 • The strings “abcc” and “abca” should return false.
 Hints
 Hint #1: This task requires you to handle duplicate characters.
 Hint #2: The naive way to check this is to loop over the characters in one and check it exists in
 the other, removing matches as you go.
 Hint #3: An easier solution is to treat both strings as character arrays.
 Hint #4: If you sort two character arrays, then you will have something that is the same length and identical character for character.
 */

