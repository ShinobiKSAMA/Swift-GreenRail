//
//  AnimatedPills.swift
//  Swift GreenRail
//
//  Created by Aditya Mhatre on 21/06/24.
//

import SwiftUI

struct Pill: Identifiable {
    let id: Int
    let text: String
    let systemIcom: String
}

struct PillButtonRowView: View {
    @Binding var selectedIndex: Int
    
    private let pills: [Pill] = [
        Pill(id: 0, text: "Home", systemIcom: "house"),
        Pill(id: 1, text: "Bookings", systemIcom: "list.bullet.rectangle"),
        Pill(id: 2, text: "Help", systemIcom: "questionmark.bubble"),
        Pill(id: 3, text: "Account", systemIcom: "person")
    ]
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(pills) { pill in
                PillButton(pill: pill, isSelected: selectedIndex == pill.id) {
                    withAnimation(.bouncy) {
                        self.selectedIndex = pill.id
                    }
                }
            }
        }
        .padding()
        .background(.ultraThinMaterial)
    }
}

struct PillButton: View {
    let pill: Pill
    let isSelected: Bool
    let onSelect: () -> Void
    
    var body: some View {
        Button(action: {
            onSelect()
        }) {
            HStack {
                iconView
                textView
            }
            .frame(maxWidth: isSelected ? .infinity : nil, alignment: .center)
            .font(.body)
            .foregroundStyle(pillForeground)
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(pillBackground)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        }.buttonStyle(PlainButtonStyle())
    }
    
    private var pillIcon: String {
        isSelected ? "\(pill.systemIcom).fill" : pill.systemIcom
    }
    
    private var pillBackground: Color {
        isSelected ? .green : Color(UIColor.secondarySystemFill)
    }
    
    private var pillForeground: Color {
        isSelected ? Color(UIColor.white) : Color(UIColor.label)
    }
    
    @ViewBuilder
    private var iconView: some View {
        ZStack{
            Image(systemName: "\(pill.systemIcom).fill")
                .opacity(isSelected ? 1: 0)
            Image(systemName: pill.systemIcom)
                .opacity(isSelected ? 0 : 1)
        }
        
    }
    
    @ViewBuilder
    private var textView: some View {
        if isSelected {
            Text(pill.text)
                .offset(x: isSelected ? 0 : 100)
                .frame(maxWidth: isSelected ? nil : 0)
                .transition(.opacity)
        }
    }
}

#Preview {
    NavigatorScreen()
}
