//
//  Headline.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import Foundation

struct Headline: Codable, Equatable {
	let headline: String
	let updated: TimeInterval
	let introduction: String
}
