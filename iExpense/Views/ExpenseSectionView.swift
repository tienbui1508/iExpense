//
//  ExpenseSectionView.swift
//  iExpense
//
//  Created by Tien Bui on 2/6/2023.
//

import SwiftUI

struct ExpenseSectionView: View {
    let title: String
    let expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    
    var body: some View {      
        Section(title) {
            ForEach(expenses) { item in
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                    }
                    
                    Spacer()
                    
                    Text(item.amount, format: .localCurrency)
                    .style(for: item)
                    
                }
            }
            .onDelete(perform: deleteItems)
        }
        
    }
}

struct ExpenseSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseSectionView(title: "Example", expenses: []) { _ in }
    }
}
