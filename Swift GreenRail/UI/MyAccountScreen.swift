//
//  MyAccountScreen.swift
//  Swift GreenRail
//
//  Created by Aditya Mhatre on 19/06/24.
//

import SwiftUI

struct MyAccountScreen: View {
    var body: some View {
        NavigationView {
            List(content: {
                Section(content: {
                    SettingsTile(icon: "person.crop.circle", title: "Adwait Patil", subTitle: "9212346782")
                }).padding(.vertical, 8)
                Section(content: {
                    WalletCard()
                }).padding(.horizontal, 8)
                Section(content: {
                    SettingsTile(icon: "lock.shield", title: "Account Settings")
                    SettingsTile(icon: "creditcard", title: "Saved Cards")
                    SettingsTile(icon: "info.circle", title: "About")
                }).padding(.vertical, 8)
                Section(content: {
                    Text("Log out").foregroundColor(.red)
                }).padding(.vertical, 4)
            })
        }
        .navigationTitle("My Account")
        .toolbarTitleDisplayMode(.inlineLarge)
    }
}

#Preview {
    MyAccountScreen()
}

struct SettingsTile: View {
    let icon: String
    let title: String
    var subTitle: String? = nil
    
    var body: some View {
        HStack(content: {
            Image(systemName: icon)
            VStack(
                alignment: .leading,
                content: {
                    Text(title)
                    if(subTitle != nil) {
                        Text(subTitle!).font(.footnote)
                    }
                }
            )
            Spacer()
            Image(systemName: "chevron.right").foregroundColor(.gray)
        })
    }
}

struct WalletCard: View {
    var body: some View {
        HStack(
            alignment: .top,
            content: {
                VStack(
                    alignment: .leading,
                    content: {
                        Text("\u{20B9}0.0").font(.system(size: 32, weight: Font.Weight.bold))
                        Text("Wallet balance").font(.subheadline).foregroundColor(.gray)
                    }
                ).padding(.vertical, 16)
                Spacer()
                Circle()
                    .frame(width: 24, height: 24, alignment: .topTrailing)
            })
    }
}
