//
//  HomeScreen.swift
//  Swift GreenRail
//
//  Created by Aditya Mhatre on 19/06/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        List{
            FAQTile(title: "Authorised IRCTC partner")
            FAQTile(title: "Instant refunds on UPI payments")
            FAQTile(title: "Dedicated customer care on call")
            FAQTile(title: "Fastest confirmed booking experience")
        }
        .listSectionSpacing(.compact)
    }
}

#Preview {
    HomeScreen()
}

struct FAQTile: View {
    var title: String
    var body: some View {
        Section {
            HStack(
                content: {
                    Text(title)
                    Spacer()
                    Image(systemName: "square.and.arrow.up.badge.clock").font(.system(size: 35))
                }
            )
        }
    }
}
