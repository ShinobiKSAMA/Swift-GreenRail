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
            List{
                Section{
                    SettingsTile(icon: "person.crop.circle", title: "Adwait Patil", subTitle: "9212346782")
                }.padding(.vertical, 8)
                Section{WalletCard()}.padding(.horizontal, 8)
                Section{
                    SettingsTile(icon: "lock.shield", title: "Account Settings")
                    SettingsTile(icon: "creditcard", title: "Saved Cards")
                    SettingsTile(icon: "info.circle", title: "About")
                }.padding(.vertical, 8)
                Section{Text("Log out").foregroundColor(.red)}.padding(.vertical, 4)
            }
            .listSectionSeparator(.hidden)
            .listSectionSpacing(.custom(20))
            .toolbarBackground(.regularMaterial, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("My Account")
                        .font(.largeTitle).fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: 25, alignment: .leading)
                }
            }
        }
    }
}

#Preview {
    NavigatorScreen()
}

struct SettingsTile: View {
    let icon: String
    let title: String
    var subTitle: String? = nil
    
    var body: some View {
        Label(title: {
            VStack(
                alignment: .leading,
                content: {
                    Text(title)
                    if(subTitle != nil) {
                        Text(subTitle!).font(.footnote)
                    }
                }
            )
        }, icon: {
            Image(systemName: icon)
        }).labelStyle(.titleAndIcon)
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
                Circle().frame(width: 24, height: 24, alignment: .topTrailing)
            })
    }
}
