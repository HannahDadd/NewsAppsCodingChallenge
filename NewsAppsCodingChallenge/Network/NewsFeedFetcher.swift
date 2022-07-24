//
//  NewsFeedFetcher.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import Foundation

protocol NewsFeedFetcher {
	func performFetch() async throws -> NewsFeed
}

struct NewsFeedFetcherWithURLSession: NewsFeedFetcher {
	private let fetchUrl = "https://raw.githubusercontent.com/bbc/news-apps-coding-challenge/master/headlines.json"

	func performFetch() async throws -> NewsFeed {
		guard let url = URL(string: fetchUrl) else {
			throw CustomError(description: "Invalid URL")
		}

		let (data, _) = try await URLSession.shared.data(from: url)

		return try JSONDecoder().decode(NewsFeed.self, from: data)
	}
}
