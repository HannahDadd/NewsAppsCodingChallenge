//
//  ArticlePresenterTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class ArticlePresenterTests: XCTestCase {

	func testPresenterFetchesDataFromInteractorAndSurfacesHeadlinePresenters() {

		// Given an ArticlePresenter with an interactor
		let articlePresenter = ArticlePresenter(interactor: ArticleInteractorMock())

		// Then the ArticlePresenter exposes the Headline
		XCTAssertEqual(articlePresenter.headline, NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
	}
}
