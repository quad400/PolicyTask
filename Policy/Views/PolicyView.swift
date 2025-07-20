//
//  PolicyView.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//

import SwiftUI

struct PolicyView: View {
    @StateObject private var viewModel = PolicyViewModel()
    @State private var selectedTab: Tab = .policies

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "shield.lefthalf.filled")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.blue)
                Text("Policy Summary")
                    .font(.title3).bold()
                Spacer()
            }
            .padding()

            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.policies) { policy in
                        PolicyCardView(policy: policy) {
                            viewModel.toggleExpansion(for: policy)
                        }
                    }
                }
                .padding()
            }

            Divider()
            FooterNavigationView(selectedTab: $selectedTab)
                .padding(.horizontal)
        }
        .background(Color(.systemGroupedBackground).ignoresSafeArea())
    }
}
