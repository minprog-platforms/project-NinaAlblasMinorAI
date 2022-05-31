//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO voor de deadline, hierna geen functionaliteit meer toevoegen:

// TODO: comments toevoegen
// TODO: maak alle @States private?
// TODO: Kijken of alle hoofdletters kloppen (struct en enum (alle types) wel, var niet etc.) Functies?
// TODO: checken of enum bijv op juiste plek staat                                                                                  ***                          Eigen types (enums, structs, classes) wil je apart hebben, losse file! Waar functies?
// TODO: NL vs EN namen
// TODO: checken of code mooi is
// TODO: print statements weg
// TODO: assets opruimen, gifje daarin?

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationView {
            DisclaimerView()
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
