//
//  XCTestCase+Extension.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 23/07/2022.
//

import XCTest

extension XCTestCase {
	func getDataForJsonFile(_ name: String) -> Data {
		guard let pathString = Bundle(for: type(of: self)).path(forResource: name, ofType: "json") else {
			fatalError("\(name).json not found")
		}

		guard let jsonString = try? String(contentsOfFile: pathString, encoding: .utf8) else {
			fatalError("Unable to convert \(name).json to String")
		}

		guard let jsonData = jsonString.data(using: .utf8) else {
			fatalError("Unable to convert \(name).json to Data")
		}

		return jsonData
	}
}
