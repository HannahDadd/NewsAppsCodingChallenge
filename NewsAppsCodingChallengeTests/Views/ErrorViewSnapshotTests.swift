//
//  ErrorViewSnapshotTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import NewsAppsCodingChallenge

class ErrorViewSnapshotTests: XCTestCase {

	func testErrorViewiPhone11() throws {
		let errorView = ErrorView_Previews.previews
			.frame(width: 375, height: 812)
		let view: UIView = UIHostingController(rootView: errorView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testErrorViewViewiPhoneSE() throws {
		let errorView = ErrorView_Previews.previews
			.frame(width: 320, height: 500)
		let view: UIView = UIHostingController(rootView: errorView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testNewsFeedViewiPad() throws {
		let newsFeedView = ErrorView_Previews.previews
			.frame(width: 788, height: 1024)
		let view: UIView = UIHostingController(rootView: newsFeedView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}
}
