//
//  Day002.swift
//  DailySwiftUI
//
//  Created by Jake Grant on 12/20/21.
//

import SwiftUI

struct Day002: View {
    var body: some View {
		ScrollView {
			VStack {
				ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
					
					ZStack {
						Image(systemName: "mappin")
							.foregroundColor(.red)
						
						VStack {
							HStack {
								Spacer()
								
								Image(systemName: "camera.fill")
									.foregroundColor(.white)
									.padding()
									.overlay(RoundedRectangle(cornerRadius: 4.0)
												.stroke(.black, lineWidth: 2))
									.background(Color.black.opacity(0.6))
							}
							
							Spacer()
							
							HStack {
								Spacer()
								
								Text("LOCATION")
									.foregroundColor(.white)
									.padding()
									.overlay(RoundedRectangle(cornerRadius: 4.0)
												.stroke(.black, lineWidth: 2))
									.background(Color.black.opacity(0.6))
							}
						}
					}
					.frame(width: 300, height: 200, alignment: .center)
					.background(Color.green)
					.overlay(RoundedRectangle(cornerRadius: 8.0)
								.stroke(.indigo, lineWidth: 2))
					
				}
			}
		}
    }
}

struct Day002_Previews: PreviewProvider {
    static var previews: some View {
        Day002()
    }
}
