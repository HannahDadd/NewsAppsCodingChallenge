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
		let newsFeedView = NewsFeedView_Previews.createPreviewView(deviceName: "iPhone 11")
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testNewsFeedViewiPhoneSE() throws {
		let newsFeedView = NewsFeedView_Previews
			.createPreviewView(deviceName: "iPhone SE (1st generation)")
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testNewsFeedViewiPad() throws {
		let newsFeedView = NewsFeedView_Previews
			.createPreviewView(deviceName: "iPad (7th generation)")
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}
}
