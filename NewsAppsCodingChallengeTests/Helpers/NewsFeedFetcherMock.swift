//
//  NewsFeedFetcherMock.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

@testable import NewsAppsCodingChallenge

struct NewsFeedFetcherSuccessfulMock: NewsFeedFetcher {
	func performFetch() async throws -> NewsFeed {
		NewsFeedStubbedData.getSampleNewsFeed()
	}
}

struct NewsFeedFetcherFailureMock: NewsFeedFetcher {
	func performFetch() async throws -> NewsFeed {
		throw CustomError(description: "Failed to fetch data")
	}
}
