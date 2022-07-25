//
//  ArticleRouter.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

class ArticleRouter {
	let statsCommunicator: StatsCommunicator?

	func makeArticleView(headline: Headline) -> some View {
		let interactor = ArticleInteractor(headline: headline)
		let presenter = ArticlePresenter(interactor: interactor)

		return ArticleView(presenter: presenter).onAppear({
			if let statsCommunicator = statsCommunicator {
				statsCommunicator.displayStat(screen: "article")
			}
		})
	}
}
