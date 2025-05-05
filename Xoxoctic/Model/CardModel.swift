//
//  CardModel.swift
//  Xoxoctic
//
//  Created by Giorgio Oso on 04/05/25.
//

import SwiftUI

struct CreditCardModel: Identifiable {
    var id: UUID = UUID()
    var name: String = ""
    var number: String = ""
    var month_year: String = ""
}
