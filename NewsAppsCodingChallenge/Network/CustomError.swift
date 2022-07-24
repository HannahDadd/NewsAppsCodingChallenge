//
//  CustomError.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import Foundation

struct CustomError: LocalizedError {
	var errorDescription: String? { return _description }
	var failureReason: String? { return _description }

	private var _description: String

	init(description: String) {
		self._description = description
	}
}
