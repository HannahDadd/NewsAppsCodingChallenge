//
//  NewsFeedInteractor.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import Foundation

protocol FeedInteractor {
	var statsCommunicator: StatsCommunicator? { get }

	func fetchNewsFeed(completion: @escaping (Result<NewsFeed, Error>) -> Void)
}

struct NewsFeedInteractor: FeedInteractor {
	let newsFeedFetcher: NewsFeedFetcher
	let statsCommunicator: StatsCommunicator?

	func fetchNewsFeed(completion: @escaping (Result<NewsFeed, Error>) -> Void) {
		Task {
			do {
				let startTime = Date()
				let feed = try await newsFeedFetcher.performFetch()
				if let statsCommunicator = statsCommunicator {
					statsCommunicator.networkStat(timeToComplete: Date().timeIntervalSince(startTime))
				}
				completion(.success(feed))
			} catch {
				completion(.failure(error))
			}
		}
	}
}
