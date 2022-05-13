//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO: comments toevoegen?
// TODO: maak alle @States private?
// TODO: GitHub checken of alle files goed staan + Test file verwijderen
// TODO: Vragen hoe ik een hoger cijfer kan krijgen
// TODO: Kijken of alle hoofdletters kloppen (struct wel, var niet etc.) & checken of enum bijv op juiste plek staat & NL vs EN & checken of code mooi is
// TODO: Debuggen

// TODO: 1.5 uur ( de max) bij de tijd optellen, want dan bereikt ie pas piek. Je moet dus sowieso 1.5 uur wachten. Maar dit is niet handig als je maar 1 biertje op hebt. Vanaf de grens naar > 0 minuten wachten, tel er tijd bij op
// TODO: als je op opnieuw klikt -> alle data herladen naar default waarden
// als je op opnieuw klikt, update ie dan wel de huidige en future date?

// TODO: Make app (images, text etc.) fit on all screen sizes

// TODO: TipsyTimerView - laat de view zoals ie was bij terugstap? Ik denk dat ie het zou onthouden als ik State en Binding vars zou hebben

// TODO: ConsumedDrinksView - (misschien) ML VS STANDAARDGLAZEN TOGGLE (of alleen std glazen, want makkelijker berekenen? dan hoeft % ook niet)
// TODO: ConsumedDrinksView - (misschien) % ALCOHOL (of van standaardpercentages uitgaan?)
// TODO: ConsumedDrinksView - eigen stijl definieren (een struct View?) die ik op iedere rechthoek kan toepassen?

// TODO: ResultView - future date error handling. Ook op andere plekken?

// TODO: DrinkView - enum maken van drinks waarbij je switcht van drinkname en drink image (lukte nie)

// TODO: james bond wordt afgeknipt als ik 3 wijn en 189 minuten doe en buiten de app wacht op notificatie en dan de app open. ik had ook op opnieuw geklikt. nu doet ie t niet meer?
// TODO: std -> standaard of glazen

// optionele extra's
// TODO: Keuzemenu drankjes toevoegen?
// TODO: widget?
// TODO: app op eigen telefoon?
// TODO: stappen ondernemen om in app store te krijgen (copyrighted plaatjes?)
// TODO: Uber
// TODO: make it work for Mac? Dan ook app icons toevoegen


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
