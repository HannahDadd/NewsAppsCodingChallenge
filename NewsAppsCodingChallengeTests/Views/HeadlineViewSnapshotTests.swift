//
//  HeadlineViewSnapshotTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import NewsAppsCodingChallenge

class HeadlineViewSnapshotTests: XCTestCase {

	func testHeadlineView() throws {
		let headlineView = HeadlineView_Previews.previews
			.frame(height: 200)
		let view: UIView = UIHostingController(rootView: headlineView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}
}
