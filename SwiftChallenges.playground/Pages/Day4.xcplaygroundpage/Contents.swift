import Foundation

/*
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 Sample input and output
 • The code "Hello, world".fuzzyContains("Hello") should return true.
 • The code "Hello, world".fuzzyContains("WORLD") should return true.
 • The code "Hello, world".fuzzyContains("Goodbye") should return false.
 
 Hints
 Hint #1: You should write this as an extension to String.
 Hint #2: You can’t use contains(), but there are other methods that do similar things.
 Hint #3: Try the range(of:) method.
 Hint #4: To ignore case, you can either uppercase both strings, or try the second parameter to range(of:).
 */
