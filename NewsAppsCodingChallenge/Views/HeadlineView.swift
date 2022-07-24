//
//  HeadlineView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct HeadlineView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HeadlineView_Previews: PreviewProvider {
    static var previews: some View {
		HeadlineView(headline: NewsFeedStubbedData.getSampleNewsFeed().headlines[0])
    }
}
