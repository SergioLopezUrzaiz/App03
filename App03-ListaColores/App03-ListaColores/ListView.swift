//
//  ContentView.swift
//  App03-ListaColores
//
//  Created by David Cantú Delgado on 30/08/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var colours = ColourModel()
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                TextField("Color", text: $searchText)
                    .font(.title2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Section(header:
                            Text("FlatUI")
                            .font(.largeTitle)
                            .foregroundColor(Color("DarkText"))
                ) {
                    ForEach(colours.flatUI.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColourView(colour: colour, pallete: "FlatUI"),
                            label: {
                                HStack {
                                    Image(systemName: colour.dark ? "lightbulb.fill": "lightbulb")
                                        .font(.title2)
                                    Text(colour.name)
                                        .font(.title)
                                        .foregroundColor(colour.dark ? Color("LightText") : Color("DarkText"))
                                }
                            })
                            .padding(.vertical, 4)
                            .listRowBackground(colour.colour)
                    }
                }
                Section(header:
                            Text("American")
                            .font(.largeTitle)
                            .foregroundColor(Color("DarkText"))
                ) {
                    ForEach(colours.american.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColourView(colour: colour, pallete: "American"),
                            label: {
                                HStack {
                                    Image(systemName: colour.dark ? "lightbulb.fill": "lightbulb")
                                        .font(.title2)
                                    Text(colour.name)
                                        .font(.title)
                                        .foregroundColor(colour.dark ? Color("LightText") : Color("DarkText"))
                                }
                            })
                            .padding(.vertical, 4)
                            .listRowBackground(colour.colour)
                    }
                }
                Section(header:
                            Text("Spanish")
                            .font(.largeTitle)
                            .foregroundColor(Color("DarkText"))
                ) {
                    ForEach(colours.spanish.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColourView(colour: colour, pallete: "Spanish"),
                            label: {
                                HStack {
                                    Image(systemName: colour.dark ? "lightbulb.fill": "lightbulb")
                                        .font(.title2)
                                    Text(colour.name)
                                        .font(.title)
                                        .foregroundColor(colour.dark ? Color("LightText") : Color("DarkText"))
                                }
                            })
                            .padding(.vertical, 4)
                            .listRowBackground(colour.colour)
                    }
                }
            }
            
            .accentColor(Color("DarkText"))
            .listStyle(SidebarListStyle())
            .navigationBarTitle("Colores", displayMode: .inline)
            .navigationBarColor(UIColor(Color.black), UIColor(Color.white))
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    Text("Colores")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            })
            
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
