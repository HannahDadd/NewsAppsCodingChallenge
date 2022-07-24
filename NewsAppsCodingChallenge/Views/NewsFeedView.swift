//
//  NewsFeedView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct NewsFeedView: View {
	var body: some View {
		Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
	}
}

struct NewsFeedView_Previews: PreviewProvider {
	static var previews: some View {
		createPreviewView(deviceName: "iPhone 11",
						  windowSize: CGSize(width: 375, height: 812))
		createPreviewView(deviceName: "iPhone SE (1st generation)",
						  windowSize: CGSize(width: 320, height: 500))
		createPreviewView(deviceName: "iPad (7th generation)",
						  windowSize: CGSize(width: 788, height: 1024))
	}

	public static func createPreviewView(deviceName: String,
										 windowSize: CGSize) -> some View {
		let interactor = NewsFeedInteractor(newsFeedFetcher: NewsFeedFetcherSuccessfulMock())
		let presenter = NewsFeedPresenter(interactor: interactor)
		return NewsFeedView(presenter: presenter)
			.environment(\.safeAreaInsets, EdgeInsets(top: 98.0, leading: 0.0, bottom: 34.0, trailing: 0.0))
			.environment(\.windowSize, windowSize)
			.previewDevice(PreviewDevice(rawValue: deviceName))
			.previewDisplayName(deviceName)
	}
}
