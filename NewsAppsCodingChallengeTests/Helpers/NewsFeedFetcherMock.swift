//
//  NewsFeedFetcherMock.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

@testable import NewsAppsCodingChallenge

class NewsFeedFetcherSuccessfulMock: NewsFeedFetcher {

	func fetchNewsFeed(completion: @escaping (Result<NewsFeed, Error>) -> Void) {
		completion(.success(NewsFeedStubbedData.getSampleNewsFeed()))
	}
}
