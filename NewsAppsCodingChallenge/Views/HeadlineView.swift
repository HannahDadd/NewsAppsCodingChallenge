//
//  HeadlineView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct HeadlineView: View {
	@ObservedObject var presenter: HeadlinePresenter

    var body: some View {
		VStack(spacing: 8) {
			Text(presenter.headlineString).headlineTypography()
				.frame(maxWidth: .infinity, alignment: .leading)
			Text(presenter.updatedTimestamp).lastUpdatedTimestampTypography()
				.frame(maxWidth: .infinity, alignment: .leading)
		}.padding(.vertical)
    }
}

struct HeadlineView_Previews: PreviewProvider {
    static var previews: some View {
		let presenter = HeadlinePresenter(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
		HeadlineView(presenter: presenter)
    }
}
