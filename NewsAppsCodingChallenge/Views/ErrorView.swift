//
//  ErrorView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct ErrorView: View {

	let error: Error
	let retryHandler: () -> Void

	var body: some View {
		VStack(spacing: 10) {
			Text(error.localizedDescription)
			Button(action: retryHandler) {
				Text("Retry")
			}
		}.padding()
	}
}

struct ErrorView_Previews: PreviewProvider {
	static var previews: some View {
		ErrorView(error: CustomError(description: "Its all gone horribly wrong"),
				  retryHandler: {})
	}
}
