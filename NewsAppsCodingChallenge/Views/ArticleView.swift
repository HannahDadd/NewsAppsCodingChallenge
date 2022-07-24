//
//  ArticleView.swift
//  NewsAppsCodingChallenge
//
//  Created by Hannah Billingsley-Dadd on 24/07/2022.
//

import SwiftUI

struct ArticleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ArticleView_Previews: PreviewProvider {
	static var previews: some View {
		createPreviewView(deviceName: "iPhone 11")
		createPreviewView(deviceName: "iPhone SE (1st generation)")
		createPreviewView(deviceName: "iPad (7th generation)")
	}

	public static func createPreviewView(deviceName: String) -> some View {
		let presenter = ArticlePresenter(interactor: ArticleInteractorMock())
		return ArticleView(presenter: presenter)
			.previewDevice(PreviewDevice(rawValue: deviceName))
			.previewDisplayName(deviceName)
	}
}
