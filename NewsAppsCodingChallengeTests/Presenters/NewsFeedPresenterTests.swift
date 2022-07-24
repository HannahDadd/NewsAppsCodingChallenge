//
//  NewsFeedPresenterTest.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class NewsFeedPresenterTests: XCTestCase {

	func testPresenterFetchesDataFromInteractor() {

		// Given a NewsFeedPresenter with a FeedInteractor
		let newsFeedPresenter = NewsFeedPresenter(interactor: NewsFeedInteractorMock())

		// When the NewsFeedPresenter asks the interactor for data
		newsFeedPresenter.fetchNewsFeed()

		// Then the news feed result is populated
		// There is no need to test the failure path here as the interactor handles
		// failure- presenter should just spit out result of interactor
		switch newsFeedPresenter.newsFeedResult {
		case .success(let newsFeed):
			XCTAssertEqual(newsFeed, NewsFeedStubbedData.getSampleNewsFeed())
		case .failure(_):
			XCTFail("Interactor should have data")
		case .none:
			XCTFail("Interactor should have data")
		}
	}
}
