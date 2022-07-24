//
//  HeadlinePresenter.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
import SwiftUI

class HeadlinePresenter: ObservableObject, Equatable, Identifiable {
	@Published var headline: String
	@Published var updatedTimestamp: String

	init(headline: Headline) {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd MMMM yyyy"
		dateFormatter.timeZone = TimeZone(abbreviation: "UTC")

		updatedTimestamp = dateFormatter.string(from: Date(timeIntervalSince1970: headline.updated))
		self.headline = headline.headline
	}

	static func == (lhs: HeadlinePresenter, rhs: HeadlinePresenter) -> Bool {
		lhs.headline == rhs.headline && lhs.updatedTimestamp == rhs.updatedTimestamp
	}
}