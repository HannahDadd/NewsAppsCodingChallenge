//
//  HeadlinePresenter.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
import SwiftUI

class HeadlinePresenter: ObservableObject, Equatable, Identifiable {
	@Published var headlineString: String
	@Published var updatedTimestamp: String
	let headline: Headline

	init(headline: Headline) {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd MMMM yyyy"
		dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

		updatedTimestamp = dateFormatter.string(from: Date(timeIntervalSince1970: headline.updated))
		headlineString = headline.headline
		self.headline = headline
	}

	static func == (lhs: HeadlinePresenter, rhs: HeadlinePresenter) -> Bool {
		lhs.headlineString == rhs.headlineString && lhs.updatedTimestamp == rhs.updatedTimestamp
	}
}
