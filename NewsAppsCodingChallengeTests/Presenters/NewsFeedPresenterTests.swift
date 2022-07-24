//
//  NewsFeedPresenterTest.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import XCTest
import SwiftUI
@testable import NewsAppsCodingChallenge

class NewsFeedPresenterTests: XCTestCase {

	func testPresenterFetchesDataFromInteractorAndSurfacesHeadlinePresenters() {

		// Given a NewsFeedPresenter with a FeedInteractor
		let newsFeedPresenter = NewsFeedPresenter(interactor: NewsFeedInteractorMock())

		// When the NewsFeedPresenter asks the interactor for data
		newsFeedPresenter.fetchNewsFeed()

		// Then the news feed result is populated with HeadlinePresenters
		// There is no need to test the failure path here as the interactor handles
		// failure- presenter should just spit out result of interactor
		switch newsFeedPresenter.newsFeedResult {
		case .success(let newsFeed):
			XCTAssertEqual(newsFeed, [
				HeadlinePresenter(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0]),
				HeadlinePresenter(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[1])])
		case .failure(_):
			XCTFail("Interactor should have data")
		case .none:
			XCTFail("Interactor should have data")
		}
	}

	func testPresenterCreatesNavLinks() {

		// Given a NewsFeedPresenter with a FeedInteractor and a Headline
		let newsFeedPresenter = NewsFeedPresenter(interactor: NewsFeedInteractorMock())
		let headline = NewsFeedStubbedData.getSampleNewsFeed().headlines[0]

		// When the NewsFeedPresenter is asked to make a nav link
		let link = newsFeedPresenter.makeLink(headline: headline)

		// Then the view produced is a NavigationLink
		XCTAssert(link as NavigationLink)
	}
}
