//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO: Make app (images, text etc.) fit on all screen sizes
// TODO: comments toevoegen?
// TODO: maak alle @States private?
// TODO: GitHub checken of alle files goed staan + Test file verwijderen
// TODO: Vragen hoe ik een hoger cijfer kan krijgen
// TODO: Kijken of alle hoofdletters kloppen (struct wel, var niet etc.) & taal & checken of code mooi is
// TODO: Debuggen

// TODO: HomeScreenView - cocktailglas plaatje

// TODO: TipsyTimerView - laat de view zoals ie was bij terugstap? Ik denk dat ie het zou onthouden als ik State en Binding vars zou hebben

// TODO: GenderView - functie verkleuring buttons?
// TODO: GenderView - enum van gender maken?

// TODO: DrivingExperience - functie verkleuring buttons?
// TODO: DrivingExperience - uitlegtekst korter


// TODO: ConsumedDrinksView - (misschien) ML VS STANDAARDGLAZEN TOGGLE (of alleen std glazen, want makkelijker berekenen? dan hoeft % ook niet)
// TODO: ConsumedDrinksView - (misschien) % ALCOHOL (of van standaardpercentages uitgaan?)
// TODO: ConsumedDrinksView - eigen stijl definieren (een struct View?) die ik op iedere rechthoek kan toepassen?
// TODO: ConsumedDrinksView - functie maken van alcohol som?

// TODO: DrinkingTimeView - in stapjes van 5 minuten?

// TODO: ResultView - Als timer = 0 --> andere tekst & als timer vanaf begin 0 was ook andere tekst
// TODO: ResultView - future date error handling
// TODO: ResultView - we willen ook notificatie als we in de app zijn
// TODO: ResultView - hacking with swift aanpassing en notificatie leuker maken


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
