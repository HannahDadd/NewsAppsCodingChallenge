//
//  HeadlineTypography.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

extension Text {
	func headlineTypography() -> Text {
		return self.font(.title)
			.bold()
			.foregroundColor(.readableBlack)
	}

	func lastUpdatedTimestampTypography() -> Text {
	   return self
			.fontWeight(.light)
			.foregroundColor(.timestampGrey)
	}

	func introductionTypography() -> Text {
	   return self
			.foregroundColor(.readableBlack)
	}
}
