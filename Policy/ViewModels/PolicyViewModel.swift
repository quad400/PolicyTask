//
//  PolicyViewModel.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//

import Foundation

class PolicyViewModel: ObservableObject {
    @Published var policies: [Policy] = []

    init() {
        loadMockData()
    }

    func loadMockData() {
        self.policies = [
            Policy(
                name: "Life Secure Plan",
                number: "POL123456",
                status: "Active",
                nextPremiumDue: "2025-08-10",
                startDate: "2020-01-01",
                maturityDate: "2040-01-01",
                sumAssured: "$100,000",
                premiumFrequency: "Annual",
                lastPremiumPaid: "2024-08-10",
                nextPremiumAmount: "$1,000"
            ),
            Policy(
                name: "Family Health Cover",
                number: "POL789101",
                status: "Lapsed",
                nextPremiumDue: "2024-06-01",
                startDate: "2018-06-01",
                maturityDate: "2038-06-01",
                sumAssured: "$50,000",
                premiumFrequency: "Monthly",
                lastPremiumPaid: "2023-06-01",
                nextPremiumAmount: "$100"
            ),
            Policy(
                name: "Child Education Plan",
                number: "POL121314",
                status: "Active",
                nextPremiumDue: "2025-01-15",
                startDate: "2021-01-15",
                maturityDate: "2036-01-15",
                sumAssured: "$75,000",
                premiumFrequency: "Quarterly",
                lastPremiumPaid: "2024-04-15",
                nextPremiumAmount: "$250"
            )
        ]
    }

    func toggleExpansion(for policy: Policy) {
        if let index = policies.firstIndex(where: { $0.id == policy.id }) {
            policies[index].isExpanded.toggle()
        }
    }
}
