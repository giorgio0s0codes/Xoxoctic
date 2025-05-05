//
//  UIStateModel.swift
//  Xoxoctic
//
//  Created by Giorgio Oso on 04/05/25.
//

import SwiftUI

public class UIStateModel: ObservableObject
{
    @Published var activeCard: Int      = 0
    @Published var screenDrag: Float    = 0.0
}
