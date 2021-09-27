//
//  ColourView.swift
//  App03-ListaColores
//
//  Created by David Cantú Delgado on 30/08/21.
//

import SwiftUI

struct ColourView: View {
    
    var colour: Colour
    var pallete: String
    
    
    var body: some View {
        
        ZStack {
            colour.colour
            VStack {
                Text("Color:")
                    .font(.headline)
                Text(colour.name)
                    .font(.largeTitle)
                Text("Paleta:")
                    .font(.headline)
                    .padding(.top,20)
                Text(pallete)
                    .font(.largeTitle)
            }
            
            .foregroundColor(colour.dark ? Color("LightText") : Color("DarkText"))
            
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle(colour.name, displayMode: .inline)
        .navigationBarColor(UIColor(Color.black), UIColor(Color.white))
        .toolbar(content: {
            ToolbarItem(placement: .principal) {
                Text(colour.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)

            }
        })
        
        
        
    }
}

struct ColourView_Previews: PreviewProvider {
    
    static var previews: some View {
        ColourView(colour: Colour.Alizarin, pallete: "FlatUI")
    }
}
