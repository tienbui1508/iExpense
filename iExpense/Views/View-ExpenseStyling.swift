//
//  View-ExpenseStyling.swift
//  iExpense
//
//  Created by Tien Bui on 2/6/2023.
//

import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return self.foregroundColor(.green)
        } else if item.amount < 100 {
            return self.foregroundColor(.yellow)
        } else {
            return self.foregroundColor(.red)
        }
    }
}
