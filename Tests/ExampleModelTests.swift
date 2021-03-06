//
//  Created by Jesse Squires
//  https://www.jessesquires.com
//
//
//  Documentation
//  https://jessesquires.github.io/JSQCoreDataKit
//
//
//  GitHub
//  https://github.com/jessesquires/JSQCoreDataKit
//
//
//  License
//  Copyright © 2015 Jesse Squires
//  Released under an MIT license: https://opensource.org/licenses/MIT
//

import CoreData
import ExampleModel
@testable import JSQCoreDataKit
import XCTest

final class ExampleModelTests: TestCase {

    func test_ThatEmployeeInsertsSuccessfully() {
        let e = Employee.newEmployee(inMemoryStack.mainContext)
        XCTAssertNotNil(e)
    }

    func test_ThatCompanyInsertsSuccessfully() {
        let c = Company.newCompany(inMemoryStack.mainContext)
        XCTAssertNotNil(c)
    }
}
