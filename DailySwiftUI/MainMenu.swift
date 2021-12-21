//
//  MainMenu.swift
//  DailySwiftUI
//
//  Created by Jake Grant on 12/21/21.
//

import SwiftUI

struct MainMenu: View {
	@State private var showNavBar = true
	@State private var inlineNavBar = false
	
    var body: some View {
		NavigationView {
			List {
				Section("Challenges") {
					Group {
						NavigationLink(destination: Day001()) {
							Label("Day 001 - Login Screen", systemImage: "key")
						}
						NavigationLink(destination: Day002()) {
							Label("Day 002 - List of Places", systemImage: "list.dash")
						}
						
						Label("Day 003 - Main Screen", systemImage: "platter.filled.top.iphone")
					}
					
					Group {
						NavigationLink(destination: Text("Not yet")) {
							Label("Day 004", systemImage: "questionmark.app.fill")
						}
						NavigationLink(destination: Text("Not yet")) {
							Label("Day 005", systemImage: "questionmark.app.fill")
						}
						NavigationLink(destination: Text("Not yet")) {
							Label("Day 006", systemImage: "questionmark.app.fill")
						}
						NavigationLink(destination: Text("Not yet")) {
							Label("Day 007", systemImage: "questionmark.app.fill")
						}
						NavigationLink(destination: Text("Not yet")) {
							Label("Day 008", systemImage: "questionmark.app.fill")
						}
						NavigationLink(destination: Text("Not yet")) {
							Label("Day 009", systemImage: "questionmark.app.fill")
						}
						NavigationLink(destination: Text("Not yet")) {
							Label("Day 010", systemImage: "questionmark.app.fill")
						}
					}
					.disabled(true)
				}
				
				Section("Settings") {
					Toggle(isOn: $showNavBar) {
						Label("Show NavBar", systemImage: showNavBar ? "eye" : "eye.slash")
					}
					
					Toggle(isOn: $inlineNavBar) {
						Label("Inline NavBar", systemImage: !inlineNavBar ?  "arrow.up.left.and.arrow.down.right" : "arrow.down.right.and.arrow.up.left")
					}
				}
			}
			.navigationTitle("10 Minute SwiftUI")
			.navigationBarHidden(!showNavBar)
			.navigationBarTitleDisplayMode(inlineNavBar ? .inline : .large)
		}
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
