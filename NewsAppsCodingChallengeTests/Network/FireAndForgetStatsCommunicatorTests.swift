//
//  StatsCommunicator.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 25/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class FireAndForgetStatsCommunicatorTests: XCTestCase {

	func testFireAndForgetStatsCommunicatorCanFormatURL() {

		// Given a FireAndForgetStatsCommunicator and paramters
		let fireAndForgetStatsCommunicator = FireAndForgetStatsCommunicator()

		// When the FireAndForgetStatsCommunicator builds a url
		let urlString = fireAndForgetStatsCommunicator.createURL(parameters: ["event": "load", "data": "100"])

		// Then the correct URLString is created
		XCTAssertEqual(urlString, "https://raw.githubusercontent.com/bbc/news-apps-ios-coding-challenge/master/analytics?event=load&data=100")
	}

	func testFireAndForgetStatsCommunicatorCanFormatURLWithNoParamters() {

		// Given a FireAndForgetStatsCommunicator and paramters
		let fireAndForgetStatsCommunicator = FireAndForgetStatsCommunicator()

		// When the FireAndForgetStatsCommunicator builds a url
		let urlString = fireAndForgetStatsCommunicator.createURL(parameters: [:])

		// Then the correct URLString is created
		XCTAssertEqual(urlString, "https://raw.githubusercontent.com/bbc/news-apps-ios-coding-challenge/master/analytics")
	}
}
