//
//  NewsFeedInteractorMock.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
@testable import NewsAppsCodingChallenge

struct NewsFeedInteractorMock: FeedInteractor {
	func fetchNewsFeed(completion: @escaping (Result<NewsFeed, Error>) -> Void) {
		completion(.success(NewsFeedStubbedData.getSampleNewsFeed()))
	}
}
