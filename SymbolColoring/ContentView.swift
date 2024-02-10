//
//  ContentView.swift
//  SymbolColoring
//
//  Created by Justin Hold on 2/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			LinearGradient(
				colors: [.white, .gray],
				startPoint: .top,
				endPoint: .bottom
			)
			.ignoresSafeArea()
			
			VStack {
				Label("Vision Pro", systemImage: "apple.logo")
					.font(.largeTitle)
					.fontWeight(.medium)
				Image(systemName: "visionpro")
					.font(
						.system(size: 300, weight: .ultraLight)
					)
					.foregroundStyle(
						LinearGradient(
							colors: [.gray, .black, .gray],
							startPoint: .top,
							endPoint: .bottom
						),
						EllipticalGradient(
							colors: [.purple, .black],
							center: .center,
							startRadiusFraction: 0.0,
							endRadiusFraction: 0.55
						)
					)
					.shadow(
						color: .black,
						radius: 25,
						y: 7
					)
			}
		}
    }
}

#Preview {
    ContentView()
}
