//
//  NewsFeedInteractor.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class NewsFeedInteractorTests: XCTestCase {

	func testInteractorServesModelUnchanged() throws {

		// Given a NewsFeed object
		let newsFeed = NewsFeedStubbedData.getSampleNewsFeed()

		// When the NewsFeedInteractor is created with a NewsFeed object
		let newsFeedInteractor = NewsFeedInteractor(newsFeed: newsFeed)

		// Then the model object is unchanged
		XCTAssertEqual(newsFeedInteractor.newsFeed, NewsFeedStubbedData.getSampleNewsFeed())
	}
}
