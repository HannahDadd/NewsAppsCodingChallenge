//
//  ArticleRouterTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import NewsAppsCodingChallenge

class ArticleRouterTests: XCTestCase {

	func testArticleRouterCreatesViewFromHeadline() {

		// Given an ArticleRouter
		let articleRouter = ArticleRouter()

		// When the ArticleRouter builds a view from a given Headline
		let view = articleRouter.makeArticleView(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
		let view: UIView = UIHostingController(rootView: view).view

		// Then the Article Router creates the correct view
		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}
}
