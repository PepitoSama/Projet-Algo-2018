import XCTest

import packageExecutableTests

var tests = [XCTestCaseEntry]()
tests += packageExecutableTests.allTests()
XCTMain(tests)