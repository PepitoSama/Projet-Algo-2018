import XCTest

import packageTestsTests

var tests = [XCTestCaseEntry]()
tests += packageTestsTests.allTests()
XCTMain(tests)