//
//  ArticleView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct ArticleView: View {
	@ObservedObject var presenter: ArticlePresenter

    var body: some View {
		VStack(spacing: 16) {
			Text(presenter.headline).headlineTypography()
				.frame(maxWidth: .infinity, alignment: .leading)
			Text(presenter.updatedTimestamp).lastUpdatedTimestampTypography()
				.frame(maxWidth: .infinity, alignment: .leading)
			Text(presenter.introduction).introductionTypography()
				.frame(maxWidth: .infinity, alignment: .leading)
			Spacer()
		}.padding()
    }
}

struct ArticleView_Previews: PreviewProvider {
	static var previews: some View {
		createPreviewView(deviceName: "iPhone 11")
		createPreviewView(deviceName: "iPhone SE (1st generation)")
		createPreviewView(deviceName: "iPad (7th generation)")
	}

	public static func createPreviewView(deviceName: String) -> some View {
		let presenter = ArticlePresenter(interactor: ArticleInteractorMock())
		return ArticleView(presenter: presenter)
			.previewDevice(PreviewDevice(rawValue: deviceName))
			.previewDisplayName(deviceName)
	}
}
