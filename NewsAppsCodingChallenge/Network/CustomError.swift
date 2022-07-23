//
//  CustomError.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import Foundation

struct CustomError: LocalizedError {

	let errorDescription: String

	init(description: String) {
		self.errorDescription = description
	}
}
