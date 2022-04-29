//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO: Make app (images, text etc.) fit on all screen sizes
// TODO: Uitleg onder iedere tipsy timer view doen (vooral bij driving experience!!)
// TODO: comments toevoegen?
// TODO: Timer blijft lopen ook als je app sluit
// TODO: een notificatie als de timer afgelopen is
// TODO: ConsumedDrinksView, DrivingExperienceView, ResultaatView

// TODO: Keuzemenu drankjes toevoegen?
// TODO: widget?
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
