//
//  NewsFeedInteractor.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import Foundation

struct NewsFeedInteractor {
	let newsFeedFetcher: NewsFeedFetcher

	func fetchNewsFeed(completion: @escaping (Result<NewsFeed, Error>) -> Void) {
		Task {
			do {
				let feed = try await newsFeedFetcher.performFetch()
				completion(.success(feed))
			} catch {
				completion(.failure(error))
			}
		}
	}
}
