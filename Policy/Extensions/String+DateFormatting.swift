//
//  String+DateFormatting.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//

import Foundation

extension String {
    func formattedDateWithSuffix(from inputFormat: String = "yyyy-MM-dd") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = inputFormat
        guard let date = formatter.date(from: self) else { return self }

        let day = Calendar.current.component(.day, from: date)
        let suffix: String
        switch day {
        case 11, 12, 13: suffix = "th"
        default:
            switch day % 10 {
            case 1: suffix = "st"
            case 2: suffix = "nd"
            case 3: suffix = "rd"
            default: suffix = "th"
            }
        }

        formatter.dateFormat = "MMM, yyyy"
        let restOfDate = formatter.string(from: date)
        return "\(day)\(suffix) \(restOfDate)"
    }
}
