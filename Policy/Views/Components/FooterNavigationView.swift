//
//  FooterNavigationView 2.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//


struct FooterNavigationView: View {
    @Binding var selectedTab: Tab

    var body: some View {
        HStack {
            Spacer()
            navItem(title: "Home", systemImage: "house.fill", tab: .home)
            Spacer()
            navItem(title: "Policies", systemImage: "doc.plaintext.fill", tab: .policies)
            Spacer()
            navItem(title: "Claims", systemImage: "doc.text.magnifyingglass", tab: .claims)
            Spacer()
            navItem(title: "Profile", systemImage: "person.fill", tab: .profile)
            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
        .font(.caption)
    }

    private func navItem(title: String, systemImage: String, tab: Tab) -> some View {
        VStack {
            Image(systemName: systemImage)
            Text(title)
        }
        .foregroundColor(selectedTab == tab ? .blue : .gray)
        .onTapGesture {
            selectedTab = tab
        }
    }
}
