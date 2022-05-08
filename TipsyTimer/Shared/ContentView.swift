//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO: Make app (images, text etc.) fit on all screen sizes
// TODO: comments toevoegen?
// TODO: Debuggen, wat als mensen stap(pen) overslaan? Of komma getal invullen.

// TODO: HomeScreenView - cocktailglas plaatje

// TODO: TipsyTimerView - laat de view zoals ie was bij terugstap? Ik denk dat ie het zou onthouden als ik State en Binding vars zou hebben
// TODO: TipsyTimerView - Nu data een class is, nog wel op deze manier initializeren?


// TODO: GenderView - functie verkleuring buttons?

// TODO: DrivingExperience - functie verkleuring buttons?

// TODO: ConsumedDrinksView - (misschien) ML VS STANDAARDGLAZEN TOGGLE (of alleen std glazen, want makkelijker berekenen? dan hoeft % ook niet)
// TODO: ConsumedDrinksView - (misschien) % ALCOHOL (of van standaardpercentages uitgaan?)
// TODO: ConsumedDrinksView - eigen stijl definieren (een struct View?) die ik op iedere rechthoek kan toepassen?
// TODO: ConsumedDrinksView - functie maken van alcohol som?

// TODO: DrinkingTimeView - in stapjes van 5 minuten?

// TODO: ResultView - Timer die afloopt
// TODO: ResultView - animatie glaasje zakt in niveau
// TODO: ResultView - Timer blijft lopen ook als je app sluit
// TODO: ResultView - een notificatie als de timer afgelopen is

// TODO: maak alle @States private?

// optionele extra's
// TODO: Keuzemenu drankjes toevoegen?
// TODO: widget?
// TODO: app cover op homescreen
// TODO: app op eigen telefoon?
// TODO: stappen ondernemen om in app store te krijgen (copyrighted plaatjes?)
// TODO: Uber


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
