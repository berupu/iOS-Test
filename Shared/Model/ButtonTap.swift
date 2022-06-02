//
//  ButtonTap.swift
//  iOS Test (iOS)
//
//  Created by Ashraful Islam Rupu on 6/2/22.
//

import Foundation

//Observing button tap action from another view
class ButtonTap: ObservableObject {
    @Published var selected: Int = -1
}
