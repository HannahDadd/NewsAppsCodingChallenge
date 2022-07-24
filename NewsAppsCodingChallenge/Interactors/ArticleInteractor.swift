//
//  ArticleInteractor.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import Foundation

protocol ArticleInteractorProtocol {
	var headline: Headline { get }
}

struct ArticleInteractor: ArticleInteractorProtocol {
	let headline: Headline
}
