import XCTest

import framelintTests

var tests = [XCTestCaseEntry]()
tests += framelintTests.allTests()
XCTMain(tests)
