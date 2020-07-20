import Foundation
import XCTest

extension String  {
    func hasUniqueLetters() -> Bool {
        return Set(self).count == self.count
    }
}
