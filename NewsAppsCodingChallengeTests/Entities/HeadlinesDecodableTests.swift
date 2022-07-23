//
//  HeadlinesDecodableTests.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import XCTest
@testable import NewsAppsCodingChallenge

class HeadlinesDecodableTests: XCTestCase {

	func testWarningsResponseIsDecodedCorrectly() throws {

		// Given a JSON Headlines response
		let stubbedHeadlinesData = getDataForJsonFile("headlines-success-response")

		// When the response is decoded to the News Feed entity
		let decoder = JSONDecoder()
		let dateFormatter = DateFormatter()
		dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
		dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
		decoder.dateDecodingStrategy = .formatted(dateFormatter)
		let newsFeed: NewsFeed = try! decoder.decode(NewsFeed.self, from: stubbedHeadlinesData)

		// Then the correct fields are filled in
		XCTAssertEqual(newsFeed.headlines.count, 9)

		XCTAssertEqual(newsFeed.headlines[0].headline, "Rare angel sharks found living off Wales")
		XCTAssertEqual(newsFeed.headlines[0].updated, TimeInterval(1448401928))
		XCTAssertEqual(newsFeed.headlines[0].introduction, "Scientists have found evidence that one of the world's rarest sharks is alive and well, living off the Welsh coast.")

		XCTAssertEqual(newsFeed.headlines[8].headline, "What dinosaur footprints tell us")
		XCTAssertEqual(newsFeed.headlines[8].updated, TimeInterval(1546300000))
		XCTAssertEqual(newsFeed.headlines[8].introduction, "While skeletons show us what dinosaurs looked like, their footprints can reveal how they moved and behaved. Dr Peter Falkingham, a biologist at Liverpool John Moores University in the UK, analyses dinosaur tracks from around the world.")
	}
}
