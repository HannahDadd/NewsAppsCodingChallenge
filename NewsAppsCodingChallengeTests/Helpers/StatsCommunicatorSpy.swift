//
//  StatsCommunicatorSpy.swift
//  NewsAppsCodingChallengeTests
//
//  Created by Hannah Billingsley-Dadd on 25/07/2022.
//

import Foundation
@testable import NewsAppsCodingChallenge

class StatsCommunicatorSpy: StatsCommunicator {
	var timeToComplete: TimeInterval?

	func networkStat(timeToComplete: TimeInterval) {
		self.timeToComplete = timeToComplete
	}
}
