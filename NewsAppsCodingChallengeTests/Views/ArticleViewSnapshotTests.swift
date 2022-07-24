//
//  ArticleViewSnapshotTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import NewsAppsCodingChallenge

class ArticleViewSnapshotTests: XCTestCase {

	func testArticleViewiPhone11() throws {
		let articleView = ArticleView_Previews.createPreviewView(deviceName: "iPhone 11")
			.frame(width: 375, height: 812)
		let view: UIView = UIHostingController(rootView: articleView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testArticleViewiPhoneSE() throws {
		let articleView = ArticleView_Previews
			.createPreviewView(deviceName: "iPhone SE (1st generation)")
			.frame(width: 320, height: 500)
		let view: UIView = UIHostingController(rootView: articleView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testArticleViewiPad() throws {
		let articleView = ArticleView_Previews
			.createPreviewView(deviceName: "iPad (7th generation)")
			.frame(width: 788, height: 1024)
		let view: UIView = UIHostingController(rootView: articleView).view

		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}
}
