//
//  NewsAppsCodingChallengeApp.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import SwiftUI

@main
struct NewsAppsCodingChallengeApp: App {
	let statsCommunicator = FireAndForgetStatsCommunicator()

    var body: some Scene {
        WindowGroup {
			NavigationView {
				newsFeedViewFactory
			}.navigationViewStyle(StackNavigationViewStyle())
        }
    }

	@ViewBuilder
	private var newsFeedViewFactory: some View {
		let fetcher = NewsFeedFetcherWithURLSession()
		let interactor = NewsFeedInteractor(newsFeedFetcher: fetcher, statsCommunicator: statsCommunicator)
		let presenter = NewsFeedPresenter(interactor: interactor)
		NewsFeedView(presenter: presenter)
	}
}
