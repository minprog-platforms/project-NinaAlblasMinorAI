//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO: Make app (images, text etc.) fit on all screen sizes
// TODO: comments toevoegen?
// TODO: Timer blijft lopen ook als je app sluit
// TODO: een notificatie als de timer afgelopen is
// TODO: Uber
// maak alle @States private
// data delen via een class of een struct? ik denk class, want een struct is altijd een kopie dus die kun je niet in-place veranderen

// TODO: Keuzemenu drankjes toevoegen?
// TODO: widget?
// TODO: app cover op homescreen
// TODO: app op eigen telefoon?
// TODO: stappen ondernemen om in app store te krijgen (copyrighted plaatjes?)


import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationView {
                HomeScreenView()
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
