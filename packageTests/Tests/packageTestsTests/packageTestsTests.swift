import XCTest
@testable import packageTests

final class packageTestsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(packageTests().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
