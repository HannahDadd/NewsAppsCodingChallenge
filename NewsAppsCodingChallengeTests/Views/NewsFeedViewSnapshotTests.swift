//
//  NewsFeedViewSnapshotTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import NewsAppsCodingChallenge

class NewsFeedViewSnapshotTests: XCTestCase {

	func testNewsFeedViewiPhone11() throws {

		// Given a NewsFeedView
		let newsFeedView = NewsFeedView_Previews.createPreviewView(deviceName: "iPhone 11")
			.frame(width: 375, height: 812)
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		// When the feed is given time to load
		let exp = expectation(description: "Test after 5 seconds")
		let result = XCTWaiter.wait(for: [exp], timeout: 5.0)

		if result == XCTWaiter.Result.timedOut {

			// Then the feed is correctly formatted
			assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
		} else {
			XCTFail("Delay interrupted")
		}
	}

	func testNewsFeedViewiPhoneSE() throws {

		// Given a NewsFeedView
		let newsFeedView = NewsFeedView_Previews
			.createPreviewView(deviceName: "iPhone SE (1st generation)")
			.frame(width: 320, height: 500)
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		// When the feed is given time to load
		let exp = expectation(description: "Test after 5 seconds")
		let result = XCTWaiter.wait(for: [exp], timeout: 5.0)

		if result == XCTWaiter.Result.timedOut {

			// Then the feed is correctly formatted
			assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
		} else {
			XCTFail("Delay interrupted")
		}
	}

	func testNewsFeedViewiPad() throws {

		// Given a NewsFeedView
		let newsFeedView = NewsFeedView_Previews
			.createPreviewView(deviceName: "iPad (7th generation)")
			.frame(width: 788, height: 1024)
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		// When the feed is given time to load
		let exp = expectation(description: "Test after 5 seconds")
		let result = XCTWaiter.wait(for: [exp], timeout: 5.0)

		if result == XCTWaiter.Result.timedOut {

			// Then the feed is correctly formatted
			assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
		} else {
			XCTFail("Delay interrupted")
		}
	}
}
