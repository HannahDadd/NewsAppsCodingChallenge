//
//  NewsFeedPresenter.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
import SwiftUI

class NewsFeedPresenter: ObservableObject {
	@Published var newsFeedResult: Result<NewsFeed, Error>?
	private let newsFeedInteractor: FeedInteractor

	init(interactor: FeedInteractor) {
		newsFeedInteractor = interactor
	}

	func fetchNewsFeed() {
		newsFeedInteractor.fetchNewsFeed {
			self.newsFeedResult = $0
		}
	}
}
