//
//  NewsFeedView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct NewsFeedView: View {
	@ObservedObject var presenter: NewsFeedPresenter

	var body: some View {
		switch presenter.newsFeedResult {
		case .success(let newsFeed):
			List {
				if newsFeed.headlines.count == 0 {
					Text("No news yet! Check back soon!")
				} else {
					Text("We have headlines!")
				}
			}.refreshable {
				presenter.fetchNewsFeed()
			}.listStyle(.plain)
		case .failure(let error):
			ErrorView(error: error, retryHandler: { presenter.fetchNewsFeed() })
		case nil:
			ProgressView().onAppear(perform: { presenter.fetchNewsFeed() })
		}
	}
}

struct NewsFeedView_Previews: PreviewProvider {
	static var previews: some View {
		createPreviewView(deviceName: "iPhone 11")
		createPreviewView(deviceName: "iPhone SE (1st generation)")
		createPreviewView(deviceName: "iPad (7th generation)")
	}

	public static func createPreviewView(deviceName: String) -> some View {
		let interactor = NewsFeedInteractor(newsFeedFetcher: NewsFeedFetcherSuccessfulMock())
		let presenter = NewsFeedPresenter(interactor: interactor)
		return NewsFeedView(presenter: presenter)
			.previewDevice(PreviewDevice(rawValue: deviceName))
			.previewDisplayName(deviceName)
	}
}
