//
//  NewsFeedView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
import SwiftUI

struct NewsFeedView: View {
	@ObservedObject var presenter: NewsFeedPresenter

	var body: some View {
		switch presenter.newsFeedResult {
		case .success(let headlinePresenters):
			List {
				if headlinePresenters.count == 0 {
					Text("No news yet! Check back soon!")
				} else {
					ForEach(headlinePresenters) { h in
						presenter.makeLink(headline: h.headline) {
							HeadlineView(presenter: h)
						}
					}
				}
			}.refreshable {
				presenter.fetchNewsFeed()
			}.listStyle(.plain)
				.navigationBarTitle(Text("News Feed"), displayMode: .inline)
				.onAppear(perform: presenter.onNewsFeedAppear)
		case .failure(let error):
			ErrorView(error: error, retryHandler: presenter.fetchNewsFeed)
		case nil:
			ProgressView().onAppear(perform: presenter.fetchNewsFeed)
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
		let interactor = NewsFeedInteractor(newsFeedFetcher: NewsFeedFetcherSuccessfulMock(), statsCommunicator: nil)
		let presenter = NewsFeedPresenter(interactor: interactor)
		presenter.fetchNewsFeed()
		return NewsFeedView(presenter: presenter)
			.previewDevice(PreviewDevice(rawValue: deviceName))
			.previewDisplayName(deviceName)
	}
}
