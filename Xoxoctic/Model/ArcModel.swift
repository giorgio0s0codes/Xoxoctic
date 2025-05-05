//
//  ArcModel.swift
//  Xoxoctic
//
//  Created by Giorgio Oso on 04/05/25.
//

import SwiftUI

struct ArcModel: Identifiable, Equatable {
    
    
    var id: UUID = UUID()
    var value: Double = 20
    var color: Color = .secondaryC
    var statVal: Double = 0
    
    static func == (lhs: ArcModel, rhs: ArcModel) -> Bool {
        return lhs.id == rhs.id
    }
    
}
