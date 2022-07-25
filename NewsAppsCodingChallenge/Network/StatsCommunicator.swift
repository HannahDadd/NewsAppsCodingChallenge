//
//  StatsCommunicator.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 25/07/2022.
//

import Foundation

protocol StatsCommunicator {
	func networkStat(timeToComplete: TimeInterval)
	func displayStat(screen: String)
}

struct FireAndForgetStatsCommunicator: StatsCommunicator {
	private let statURL = "https://raw.githubusercontent.com/bbc/news-apps-ios-coding-challenge/master/analytics"

	func displayStat(screen: String) {
		let urlString = createURL(parameters: ["event": "display", "screen": screen])
		Task {
			await sendStats(urlString: urlString)
		}
	}

	func networkStat(timeToComplete: TimeInterval) {
		let urlString = createURL(parameters: ["event": "load", "time": String(Int(timeToComplete))])
		Task {
			await sendStats(urlString: urlString)
		}
	}

	private func sendStats(urlString: String) async {

		do {
			guard let url = URL(string: urlString) else {
				throw CustomError(description: "Invalid URL")
			}
			try await URLSession.shared.data(from: url)
		} catch {
			// fire and forget- do nothing
		}
	}

	func createURL(parameters: [String: String]) -> String {
		if parameters.isEmpty {
			return statURL
		}

		let params = parameters.map { "\($0)=\($1)" }
		return statURL + "?" + params.joined(separator: "&")
	}
}
