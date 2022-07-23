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
		let newsFeed = getSampleNewsFeed()

		// When the NewsFeedInteractor is created with a NewsFeed object
		let newsFeedInteractor = NewsFeedInteractor(newsFeed: newsFeed)

		// Then the model object is unchanged
		XCTAssertEqual(newsFeedInteractor.newsFeed, getSampleNewsFeed())
	}

	private func getSampleNewsFeed() -> NewsFeed {
		NewsFeed(headlines: [
			Headline(headline: "Rare angel sharks found living off Wales", updated: TimeInterval(1448401928), introduction: "Scientists have found evidence that one of the world's rarest sharks is alive and well, living off the Welsh coast."),
			Headline(headline: "Neanderthals 'could kill at a distance'", updated: TimeInterval(1448601928), introduction: "Neanderthals may once have been considered to be our inferior, brutish cousins, but a new study is the latest to suggest they were smarter than we thought - especially when it came to hunting.")
		])
	}
}
