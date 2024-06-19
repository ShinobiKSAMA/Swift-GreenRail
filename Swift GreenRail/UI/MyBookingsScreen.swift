//
//  MyBookingsScreen.swift
//  Swift GreenRail
//
//  Created by Aditya Mhatre on 19/06/24.
//

import SwiftUI

struct MyBookingsScreen: View {
    @State private var selection: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker("LocalizedStringKey", selection: $selection) {
                Text("Upcoming").tag(0)
                Text("Completed").tag(1)
                Text("Cancelled").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            NavigationView(content: {
                List(content: {
                    Text("Item")
                })
                .listStyle(.plain)
                .navigationTitle("Bookings")
                .toolbarTitleDisplayMode(.inlineLarge)
            })
        }.padding()
    }
}

#Preview {
    NavigatorScreen()
}
