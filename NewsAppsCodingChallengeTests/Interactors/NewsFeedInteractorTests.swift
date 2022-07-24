//
//  NewsFeedInteractor.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class NewsFeedInteractorTests: XCTestCase {

	func testInteractorFetchesNewsFeedSuccessfully() {

		// Given a NewsFeedInteractor with a successful NewsFeedFetcher
		let newsFeedInteractor = NewsFeedInteractor(newsFeedFetcher: NewsFeedFetcherSuccessfulMock())

		// When the NewsFeedInteractor fetches the data
		newsFeedInteractor.fetchNewsFeed() {

			// Then the news feed object is returned
			switch $0 {
			case .success(let newsFeed):
				XCTAssertEqual(newsFeed, NewsFeedStubbedData.getSampleNewsFeed())
			case .failure(_):
				XCTFail("Call should be a success")
			}
		}
	}

	func testInteractorFailurePath() {

		// Given a NewsFeedInteractor with a failure NewsFeedFetcher
		let newsFeedInteractor = NewsFeedInteractor(newsFeedFetcher: NewsFeedFetcherFailureMock())

		// When the NewsFeedInteractor fetches the data
		newsFeedInteractor.fetchNewsFeed() {

			// Then the news feed object is returned
			switch $0 {
			case .success(_):
				XCTFail("Call should fail")
			case .failure(let error):
				XCTAssertEqual(error.localizedDescription, "Failed to fetch data")
			}
		}
	}
}
