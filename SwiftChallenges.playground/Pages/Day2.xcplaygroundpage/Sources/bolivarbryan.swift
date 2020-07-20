import Foundation

extension String {
    func isPalindrome() -> Bool {
        return self.lowercased().map { $0 } == self.lowercased().reversed()
    }
}

//"Hello, world".isPalindrome()
//"Never odd or even".isPalindrome()
//"rotator".isPalindrome()
//"Rats live on no evil star".isPalindrome()
