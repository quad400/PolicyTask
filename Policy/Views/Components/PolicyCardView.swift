//
//  PolicyCardView.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//

import SwiftUI

struct PolicyCardView: View {
    var policy: Policy
    var onToggle: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(policy.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("Policy #: \(policy.number)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text("Status: \(policy.status)")
                        .font(.caption)
                        .foregroundColor(policy.status.lowercased() == "active" ? .green : .red)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 4) {
                    Text("Next Due")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(policy.nextPremiumDue.formattedDateWithSuffix())
                        .font(.callout)
                        .bold()
                        .foregroundColor(.blue)
                }
            }

            Button(action: onToggle) {
                Label(policy.isExpanded ? "Hide Details" : "Read More",
                      systemImage: policy.isExpanded ? "chevron.up.circle.fill" : "chevron.down.circle.fill")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }

            if policy.isExpanded {
                VStack(alignment: .leading, spacing: 8) {
                    Divider()
                    Group {
                        Text("Start Date: \(policy.startDate.formattedDateWithSuffix())")
                        Text("Maturity Date: \(policy.maturityDate.formattedDateWithSuffix())")
                        Text("Sum Assured: \(policy.sumAssured)")
                        Text("Premium Frequency: \(policy.premiumFrequency)")
                        Text("Last Premium Paid: \(policy.lastPremiumPaid.formattedDateWithSuffix())")
                        Text("Next Premium Amount: \(policy.nextPremiumAmount)")
                    }
                    .font(.footnote)
                    .foregroundColor(.secondary)
                }
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(8)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 4)
        .frame(maxWidth: .infinity, alignment: .leading)
        .animation(.easeInOut(duration: 0.3), value: policy.isExpanded)
    }
}
