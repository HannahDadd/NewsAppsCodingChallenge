//
//  NewsFeedInteractor.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class NewsFeedInteractorTests: XCTestCase {

	func testInteractorFetchesNewsFeedSuccessfully() throws {

		// Given a NewsFeedInteractor with a successful NewsFeedFetcher
		let newsFeedInteractor = NewsFeedInteractor(newsFeedFetcher: NewsFeedFetcherSuccessfulMock())

		// When the NewsFeedInteractor fetches the data
		let fetchedData = NewsFeedInteractor.fetchNewsFeed()

		// Then the news feed object is returned
		XCTAssertEqual(fetchedData, NewsFeedStubbedData.getSampleNewsFeed())
	}
}
