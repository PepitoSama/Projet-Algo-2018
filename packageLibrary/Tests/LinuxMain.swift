import XCTest

import packageLibraryTests

var tests = [XCTestCaseEntry]()
tests += packageLibraryTests.allTests()
XCTMain(tests)