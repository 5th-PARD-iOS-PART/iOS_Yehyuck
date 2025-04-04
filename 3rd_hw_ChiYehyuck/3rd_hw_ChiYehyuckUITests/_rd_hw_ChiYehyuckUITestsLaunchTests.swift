//
//  _rd_hw_ChiYehyuckUITestsLaunchTests.swift
//  3rd_hw_ChiYehyuckUITests
//
//  Created by Yehyuck Chi on 4/1/25.
//

import XCTest

final class _rd_hw_ChiYehyuckUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
