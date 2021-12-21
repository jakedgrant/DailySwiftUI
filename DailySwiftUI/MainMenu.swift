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
						NavigationLink("Day 001 - Login Screen", destination: Day001())
						NavigationLink("Day 002 - List of Places", destination: Day002())
						Text("Day 003 - Navigation View (This One!)")
					}
					
					Group {
						NavigationLink("Day 004 - ?", destination: Text("Not yet!"))
						NavigationLink("Day 005 - ?", destination: Text("Not yet!"))
						NavigationLink("Day 006 - ?", destination: Text("Not yet!"))
						NavigationLink("Day 007 - ?", destination: Text("Not yet!"))
						NavigationLink("Day 008 - ?", destination: Text("Not yet!"))
						NavigationLink("Day 009 - ?", destination: Text("Not yet!"))
						NavigationLink("Day 010 - ?", destination: Text("Not yet!"))
					}
					.disabled(true)
				}
				
				Section("Settings") {
					Toggle("Show NavBar", isOn: $showNavBar)
					Toggle("Inline NavBar", isOn: $inlineNavBar)
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
