//
//  Policy.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//

import Foundation

struct Policy: Identifiable{
    let id = UUID()
    let name: String
    let number: String
    let status: String
    let nextPremiumDue: String
    
    let startDate: String
    let maturityDate: String
    let sumAssured: String
    let premiumFrequency: String
    let lastPremiumPaid: String
    let nextPremiumAmount: String

    var isExpanded: Bool = false
}
