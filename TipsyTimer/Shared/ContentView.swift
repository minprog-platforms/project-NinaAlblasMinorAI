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
// TODO: als je op opnieuw klikt -> wordt alle data dan herladen naar default waarden? en update ie de huidige en future date? OPNIEUW meot timer ook cancelen!

// TODO: Make app (images, text etc.) fit on all screen sizes

// TODO: TipsyTimerView - laat de view zoals ie was bij terugstap? Ik denk dat ie het zou onthouden als ik State en Binding vars zou hebben

// TODO: ResultView - future date error handling. Ook op andere plekken?

// TODO: DrinkView - enum maken van drinks waarbij je switcht van drinkname en drink image (lukte nie)

// TODO: Notificaties doen het niet op eigen telefoon, wel in simulator

// TODO: DisclaimerView - akkoord geven om door te kunnen

// TODO: ConsumedDrinksView - 0 weghalen?

// TODO: Scherm met tijd sinds laatste drankje OF disclaimer dat de hetoonde wachttijd geldt vanaf laatste drankje

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
