//
//  HeadlinePresenterTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class HeadlinePresenterTests: XCTestCase {

	func testPresenterFormatsDateCorrectly() {

		// Given a HeadlinePresenter with a Headline
		let headlinePresenter = HeadlinePresenter(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])

		// Then the date is formatted as required by the designs
		XCTAssertEqual(headlinePresenter.updatedTimestamp, "24 November 2015")
	}

	func testPresenterOutputsHeadlineTextUnchanged() {

		// Given a HeadlinePresenter with a Headline
		let headlinePresenter = HeadlinePresenter(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])

		// Then the headline is unchanged
		XCTAssertEqual(headlinePresenter.headlineString, "Rare angel sharks found living off Wales")
	}
}
