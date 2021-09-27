//
//  ColourModel.swift
//  App03-ListaColores
//
//  Created by David Cantú Delgado on 24/09/21.
//

import SwiftUI

class ColourModel: ObservableObject {
    
    @Published var flatUI = [Colour]()
    @Published var american = [Colour]()
    @Published var spanish = [Colour]()
    
    
    init() {
        
        LoadData()
        
    }
    
    func LoadData() {
        flatUI.append(contentsOf: Colour.flatUI)
        
        american.append(contentsOf: Colour.american)
        
        spanish.append(contentsOf: Colour.spanish)
    }
    
}
