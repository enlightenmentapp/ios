//
//  EnlightenmentUITests.swift
//  EnlightenmentUITests
//
//  Created by Paul Shapiro on 1/6/19.
//  Copyright © 2019 Enlightenment of Tathagata. All rights reserved.
//

import XCTest

class EnlightenmentUITests: XCTestCase {

    override func setUp()
	{
        continueAfterFailure = false
		//
		let app = XCUIApplication()
		setupSnapshot(app)
		app.launch()
		XCUIDevice.shared.orientation = .portrait
    }
    override func tearDown()
	{
    }

	func test_menu()
	{
		XCUIDevice.shared.orientation = .portrait
		Snapshot.snapshot("01Menu", timeWaitingForIdle: 10)
	}
	func test_intro()
	{
		XCUIDevice.shared.orientation = .portrait
		XCUIApplication().buttons["Introduction"].tap()
		sleep(10) // wait for web content to load
		Snapshot.snapshot("02Introduction", timeWaitingForIdle: 10)
	}
	func test_message()
	{
		XCUIDevice.shared.orientation = .landscapeLeft
		XCUIApplication().buttons["A Message From Tathagata"].tap()
		sleep(5) // wait for web content to load
		Snapshot.snapshot("03Message", timeWaitingForIdle: 10)
	}
	func test_contents()
	{
		XCUIDevice.shared.orientation = .portrait
		let app = XCUIApplication()
		app.buttons["Table Of Contents"].tap()
		Snapshot.snapshot("04Contents", timeWaitingForIdle: 10)

	}
	func test_gallery()
	{
		XCUIDevice.shared.orientation = .portrait
		let app = XCUIApplication()
		app.buttons["Table Of Contents"].tap()
		app.tables.staticTexts["Photos of Tathagata"].tap()
		Snapshot.snapshot("05Gallery", timeWaitingForIdle: 10)
	}
}
