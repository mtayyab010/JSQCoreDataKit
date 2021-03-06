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

final class SaveResultTests: XCTestCase {

    func test_SaveResult_Error() {
        let success = SaveResult.success
        XCTAssertNil(success.error())

        let failure = SaveResult.failure(NSError(domain: "err", code: 0, userInfo: nil))
        XCTAssertNotNil(failure.error())
    }

    func test_SaveResult_Equality() {
        let success = SaveResult.success
        let failure = SaveResult.failure(NSError(domain: "err", code: 0, userInfo: nil))
        XCTAssertNotEqual(success, failure)
    }

    func test_SaveResult_Equality_Success() {
        let success1 = SaveResult.success
        let success2 = SaveResult.success
        XCTAssertEqual(success1, success2)
    }

    func test_SaveResult_Equality_Failure() {
        let err = NSError(domain: "err", code: 0, userInfo: nil)
        let failure1 = SaveResult.failure(err)
        let failure2 = SaveResult.failure(err)
        XCTAssertEqual(failure1, failure2)

        let failure3 = SaveResult.failure(NSError(domain: "err2", code: 2, userInfo: nil))
        XCTAssertNotEqual(failure1, failure3)
    }
}
