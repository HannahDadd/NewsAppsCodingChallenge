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
		let articleRouter = ArticleRouter(statsCommunicator: nil)

		// When the ArticleRouter builds a view from a given Headline
		let headlineView = articleRouter.makeArticleView(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
		let view: UIView = UIHostingController(rootView: headlineView).view

		// Then the Article Router creates the correct view
		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
	}

	func testArticleRouterSendsStatWhenViewAppears() {

		// Given an ArticleRouter with a stats communicator
		let statsCommunicator = StatsCommunicatorSpy()
		let articleRouter = ArticleRouter(statsCommunicator: statsCommunicator)

		// When the ArticleRouter builds a view from a given Headline
		let headlineView = articleRouter.makeArticleView(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
		let view: UIView = UIHostingController(rootView: headlineView).view

		// Then a display stat is sent
		// Snapshot required to test onAppear() function
		assertSnapshot(matching: view, as: .image(size: view.intrinsicContentSize))
		XCTAssertNotNil(statsCommunicator.screen)
		XCTAssertEqual(statsCommunicator.screen, "article")
	}
}
