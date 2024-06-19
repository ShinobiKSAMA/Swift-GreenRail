//
//  NavigatorScreen.swift
//  Swift GreenRail
//
//  Created by Aditya Mhatre on 19/06/24.
//

import SwiftUI

struct NavigatorScreen: View {
    @State private var selectedIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            NavigationItem(title: "Home", icon: "house.fill", content: {
                Text("Home View")
            }).tag(0)
            NavigationItem(title: "My Bookings", icon: "list.bullet.rectangle.fill", content: {
                MyBookingsScreen()
            }).tag(1)
            NavigationItem(title: "Help", icon: "questionmark.bubble.fill", content: {
                Text("Help View")
            }).tag(2)
            NavigationItem(title: "My Account", icon: "person.crop.circle.fill", content: {
                MyAccountScreen()
            }).tag(3)
        }
    }
}

#Preview {
    NavigatorScreen()
}

struct NavigationItem<Content: View>: View {
    let title: String
    let icon: String
    @ViewBuilder let content: Content
    
    var body: some View {
        content
            .tabItem {Label(title, systemImage: icon)}
    }
}
