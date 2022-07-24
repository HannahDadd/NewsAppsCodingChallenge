//
//  ArticleInteractorTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class ArticleInteractorTests: XCTestCase {

	func testInteractorServesHeadline() {

		// Given an ArticleInteractor with a headline
		let articleInteractor = ArticleInteractor(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])

		// Then the ArticleInteractor exposes the Headline
		XCTAssertEqual(articleInteractor.headline, NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
	}
}
