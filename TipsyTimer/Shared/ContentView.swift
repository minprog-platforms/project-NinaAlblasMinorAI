//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO voor de deadline, hierna geen functionaliteit meer toevoegen:

// TODO: comments toevoegen
// TODO: maak alle @States private?
// TODO: GitHub checken of alle files goed staan + Test en PhoneView verwijderen
// TODO: Kijken of alle hoofdletters kloppen (struct wel, var niet etc.) & checken of enum bijv op juiste plek staat & NL vs EN & checken of code mooi is
// TODO: Debuggen
// TODO: import foundation?

// TODO: waarom gaat ie iedere seconde door de functie waiting time? en in updateTimeRemaining() steeds opnieuw berekenen
// TODO: na notificatie is james bond afgeknipt - lijkt gefixt?
// TODO: Merijns enum van drinks werkt niet
// TODO: TipsyTimerView - laat de view zoals ie was bij terugstap? Ik denk dat ie het zou onthouden als ik State en Binding vars zou hebben
// TODO: ResultView - future date error handling. Ook op andere plekken?
// TODO: iOS 14 downgrade?
// TODO: Uber belt niet

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
