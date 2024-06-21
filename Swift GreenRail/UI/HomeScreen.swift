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
            VStack{
                HStack {
                    Image(systemName: "platter.2.filled.iphone")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, -15)
                        .foregroundColor(.accentColor)
                        .opacity(0.8)
                        .frame(width: 60)
                    VStack(
                        alignment: .leading,
                        content: {
                            Text("Enjoying Swift-GreenRail?").font(.headline)
                            Text("Share your experiece with us and help spread the world!").multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        }
                    )
                }.padding(.horizontal)
                HStack{
                    Button(action: {
                        print("Needs Work clicked")
                    }) {
                        Text("Needs Work").padding(.horizontal).padding(.vertical, 8)
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                    Button(action: {
                        print("Love It clicked")
                    }){
                        Label("Love It!", systemImage: "heart.fill")
                            .labelStyle(.titleAndIcon)
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                    }
                    .buttonStyle(.borderedProminent)
                }.fontWeight(.bold)
            }
            FAQSection()
        }
        .listSectionSpacing(.compact)
        .listRowSpacing(16)
    }
}

#Preview {
    NavigatorScreen()
}

struct FAQTile: View {
    var title: String
    var body: some View {
        HStack(
            alignment: .center, content: {
                Text(title)
                Spacer()
                Image(systemName: "square.and.arrow.up.badge.clock").font(.system(size: 35))
            }
        )
    }
}

struct FAQSection: View {
    var body: some View {
        Section(
            header: Text("Why book with Swift-GreenRail?").textCase(nil).padding(.leading, -20),
            content: {
                FAQTile(title: "Authorised IRCTC partner")
                FAQTile(title: "Instant refunds on UPI payments")
                FAQTile(title: "Dedicated customer care on call")
                FAQTile(title: "Fastest confirmed booking experience")
            }
        )
        .headerProminence(.increased)
        .listRowBackground(Color(.green).opacity(0.1))
    }
}
