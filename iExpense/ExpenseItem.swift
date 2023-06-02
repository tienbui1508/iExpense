//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Tien Bui on 1/6/2023.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
