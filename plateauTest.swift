//  plateauTest.swift

import Foundation
@testable import plateauProtocol

final class plateauTest: XCTestCase {
    func testInit() -> Bool {
        if self.init() {
            return true
        }
    }
}
