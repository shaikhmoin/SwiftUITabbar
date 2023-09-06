//
//  ContentView.swift
//  TabviewController
//
//  Created by macOS on 10/08/23.
//

import SwiftUI

struct TabbarView: View {
    
    @State private var selectedTabIndex = 0
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            
            HomeView()
            
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(0)
            
            VStack {
                Text("Explore")
            }
            .tabItem {
                Label("Explore", systemImage: "network")
            }
            .tag(1)
            
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(2)
            
            Text("Notification")
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
                .tag(3)
                .badge(12)
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
                .tag(4)
        }
        .accentColor(Color.red)
        .onAppear() {
            UITabBar.appearance().barTintColor = .yellow
        }
        .navigationBarHidden(true)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
