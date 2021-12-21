//
//  ContentView.swift
//  DailySwiftUI
//
//  Created by Jake Grant on 12/19/21.
//

import SwiftUI

struct Day001: View {
    var body: some View {
		NavigationView {
			VStack {
				Spacer()
				
				Image(systemName: "lock")
					.scaleEffect(5)
					.padding()
				
				Spacer()
				
				TextField("Name", text: Binding.constant(""))
					.padding()
					.background(Color.gray.opacity(0.2))
					.padding(.horizontal)
				
				TextField("Password", text: Binding.constant(""))
					.padding()
					.background(Color.gray.opacity(0.2))
					.padding(.horizontal)
				
				Toggle("Remember Me", isOn: Binding.constant(true))
					.padding()
					.padding(.horizontal)
				
				Button(action: login) {
					Text("Login")
						.foregroundColor(.white)
						.frame(maxWidth: .infinity)
						.padding()
						.background(Color.blue)
				}
				.padding(.horizontal)
				
				Link("Forgot password?", destination: URL(fileURLWithPath: ""))
					.padding()
				
				Spacer()
				
				Link("Register here!", destination: URL(fileURLWithPath: ""))
			}
			.navigationBarTitleDisplayMode(.inline)
		}
    }
				
	private func login() { }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Day001()
    }
}
