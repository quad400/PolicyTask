//
//  FooterNavigationView 2.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//

import SwiftUI

enum Tab {
    case home, policies, claims, profile
}

struct FooterNavigationView: View {
    @Binding var selectedTab: Tab

    var body: some View {
        HStack {
            tabItem(icon: "house.fill", title: "Home", tab: .home)
            tabItem(icon: "doc.plaintext.fill", title: "Policies", tab: .policies)
            tabItem(icon: "doc.text.magnifyingglass", title: "Claims", tab: .claims)
            tabItem(icon: "person.fill", title: "Profile", tab: .profile)
        }
        .padding(.vertical, 10)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }

    @ViewBuilder
    private func tabItem(icon: String, title: String, tab: Tab) -> some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 18, weight: .semibold))
            Text(title)
                .font(.caption2)
        }
        .padding(.horizontal, 12)
        .foregroundColor(selectedTab == tab ? .darkBlue : .gray)
        .onTapGesture {
            selectedTab = tab
        }
        .frame(maxWidth: .infinity)
    }
}
