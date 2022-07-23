//
//  NewsFeedFetcher.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import Foundation

protocol NewsFeedFetcher {
	func fetchNewsFeed(completion: @escaping (Result<NewsFeed, Error>) -> Void)
}
