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

		// Then the ArticlePresenter exposes the Headline and introduction correctly
		XCTAssertEqual(articlePresenter.headline, "Rare angel sharks found living off Wales")
		XCTAssertEqual(articlePresenter.introduction, "Scientists have found evidence that one of the world's rarest sharks is alive and well, living off the Welsh coast.")
	}

	func testPresenterFormatsDateCorrectly() {

		// Given an ArticlePresenter with an interactor
		let articlePresenter = ArticlePresenter(interactor: ArticleInteractorMock())

		// Then the date is formatted as required by the designs
		XCTAssertEqual(articlePresenter.updatedTimestamp, "24 November 2015")
	}
}
