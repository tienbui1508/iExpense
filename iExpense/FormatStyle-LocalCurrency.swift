//
//  FormatStyle-LocalCurrency.swift
//  iExpense
//
//  Created by Tien Bui on 2/6/2023.
//

import Foundation

extension FormatStyle where Self == FloatingPointFormatStyle<Double>.Currency {
    static var localCurrency: Self {
        .currency(code: Locale.current.currency?.identifier ?? "USD")
    }
}
