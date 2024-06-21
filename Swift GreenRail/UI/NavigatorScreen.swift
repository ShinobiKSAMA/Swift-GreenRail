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
        ZStack (alignment: .bottom) {
            TabView(selection: $selectedIndex) {
                HomeScreen().tag(0)
                MyBookingsScreen().tag(1)
                Text("Help View").tag(2)
                MyAccountScreen().tag(3)
            }.tint(.green).padding(.vertical, 0)
            PillButtonRowView(selectedIndex: $selectedIndex)
        }
    }
}

#Preview {
    NavigatorScreen()
}
