//
//   Double.swift
//  Crypto-Boy
//
//  Created by Aurelio Le Clarke on 06.10.2022.
//

import Foundation

extension Double {
    
    //Helps to convert numbers
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator  = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    //percent formatter
    
    private var numberFormatter: NumberFormatter  {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
        
    }
    
    
        //transform to string
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    func toPercent() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else { return ""}
        return numberAsString + "%"
    }


}
