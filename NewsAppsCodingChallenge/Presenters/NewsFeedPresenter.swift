//
//  NewsFeedPresenter.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
import SwiftUI

class NewsFeedPresenter: ObservableObject {
	@Published var newsFeedResult: Result<[HeadlinePresenter], Error>?
	private let newsFeedInteractor: FeedInteractor

	init(interactor: FeedInteractor) {
		newsFeedInteractor = interactor
	}

	func fetchNewsFeed() {
		newsFeedInteractor.fetchNewsFeed {
			switch $0 {
			case .success(let newsFeed):
				let headlinePresenters = newsFeed.headlines
					.map { HeadlinePresenter(headline: $0) }
				self.newsFeedResult = .success(headlinePresenters)
			case .failure(let error):
				self.newsFeedResult = .failure(error)
			}
		}
	}
}
