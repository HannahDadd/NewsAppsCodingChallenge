//
//  HeadlineView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct HeadlineView: View {
	let headline: Headline

    var body: some View {
		VStack {
			Text(headline.headline).headlineTypography()
			Text("Timestamp here").lastUpdatedTimestampTypography()
		}
    }
}

struct HeadlineView_Previews: PreviewProvider {
    static var previews: some View {
		HeadlineView(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
    }
}
