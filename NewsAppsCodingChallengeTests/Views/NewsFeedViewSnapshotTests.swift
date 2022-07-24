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
		let newsFeedView = NewsFeedView_Preview().createPreviewView(
			deviceName: "iPhone 11",
			windowSize: CGSize(width: 375, height: 812))
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testNewsFeedViewiPhoneSE() throws {
		let newsFeedView = NewsFeedView_Preview().createPreviewView(
			deviceName: "iPhone SE (1st generation)",
			windowSize: CGSize(width: 320, height: 500))
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testNewsFeedViewiPad() throws {
		let newsFeedView = NewsFeedView_Preview().createPreviewView(
			deviceName: "iPad (7th generation)",
			windowSize: CGSize(width: 788, height: 1024))
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}
}