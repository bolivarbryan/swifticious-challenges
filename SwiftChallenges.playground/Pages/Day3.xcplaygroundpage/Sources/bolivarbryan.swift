import Foundation

extension String {
    func containsSameCharacters(than secondString: String) -> Bool {
        if self == secondString {
            return true
        }
        
        guard self.count == secondString.count else {
            return false
        }
        
        let sortedS1 = self.sorted()
        let sortedS2 = secondString.sorted()
        
        return sortedS1 == sortedS2
    }
}


//"abca".containsSameCharacters(than: "abca")
//"abc".containsSameCharacters(than: "cba")
//" a1 b2 ".containsSameCharacters(than: " b1 a2 ")
//"abc".containsSameCharacters(than: "abca")
//"abc".containsSameCharacters(than: "Abc")
//"abc".containsSameCharacters(than: "cbAa")
//"abcc".containsSameCharacters(than: "abca")
