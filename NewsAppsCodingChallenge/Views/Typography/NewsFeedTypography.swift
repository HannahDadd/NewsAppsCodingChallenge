//
//  HeadlineTypography.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

extension Text {
	func headlineTypography() -> Text {
	   return self
			.font(.system(size: 45, weight: .bold, design: .default))
			.foregroundColor(.readableBlack)
	}

	func lastUpdatedTimestampTypography() -> Text {
	   return self
			.fontWeight(.light)
			.foregroundColor(.readableBlack)
	}

	func introductionTypography() -> Text {
	   return self
			.foregroundColor(.readableBlack)
	}
}
