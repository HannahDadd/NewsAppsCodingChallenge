//
//  NewsAppsCodingChallengeApp.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import SwiftUI

@main
struct NewsAppsCodingChallengeApp: App {
    var body: some Scene {
        WindowGroup {
			NavigationView {
				newsFeedViewFactory
			}
        }
    }

	@ViewBuilder
	private var newsFeedViewFactory: some View {
		let fetcher = NewsFeedFetcherWithURLSession()
		let interactor = NewsFeedInteractor(newsFeedFetcher: fetcher)
		let presenter = NewsFeedPresenter(interactor: interactor)
		NewsFeedView(presenter: presenter)
	}
}
