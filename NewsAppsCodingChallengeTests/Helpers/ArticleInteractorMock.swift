//
//  ArticleInteractorMock.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation
@testable import NewsAppsCodingChallenge

struct ArticleInteractorMock: ArticleInteractorProtocol {
	let headline = NewsFeedStubbedData.getSampleNewsFeed().headlines[0]
}
