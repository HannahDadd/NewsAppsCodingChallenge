//
//  ArticlePresenter.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
import SwiftUI

class ArticlePresenter: ObservableObject {
	@Published var headline: String
	@Published var updatedTimestamp: String
	@Published var introduction: String

	init(interactor: ArticleInteractorProtocol) {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd MMMM yyyy"
		dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

		updatedTimestamp = dateFormatter.string(from: Date(timeIntervalSince1970: interactor.headline.updated))
		headline = interactor.headline.headline
		introduction = interactor.headline.introduction
	}
}
