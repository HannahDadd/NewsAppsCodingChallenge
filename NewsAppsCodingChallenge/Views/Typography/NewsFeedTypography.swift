//
//  HeadlineTypography.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct HeadlineText: View {
	let text: String

	var body: some View {
		Text(text)
			.font(.system(size: 45, weight: .bold, design: .default))
	}
}

struct LastUpdatedTimestamp: View {
	let text: String

	var body: some View {
		Text(text)
			.fontWeight(.light)
	}
}

struct IntroductionText: View {
	let text: String

	var body: some View {
		Text(text)
	}
}
