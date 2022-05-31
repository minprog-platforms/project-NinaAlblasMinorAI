//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//
// TODO voor de deadline, hierna geen functionaliteit meer toevoegen:

// TODO: comments toevoegen
// TODO: maak alle @States private?
// TODO: GitHub checken of alle files goed staan + Test en PhoneView verwijderen                                                    ***
// TODO: Kijken of alle hoofdletters kloppen (struct wel, var niet etc.)                                                            ***
// TODO: checken of enum bijv op juiste plek staat                                                                                  ***
// TODO: NL vs EN namen
// TODO: checken of code mooi is
// TODO: Debuggen?                                                                                                                  ***
// TODO: import foundation?                                                                                                         ***
// TODO: waarom gaat ie met iedere tap door de functie waiting time?                                                                ***
// TODO: in updateTimeRemaining() steeds opnieuw berekenen                                                                          ***
// TODO: TipsyTimerView - laat de view zoals ie was bij terugstap?                                                                  ***
// TODO: ResultView - future date error handling. Ook op andere plekken?                                                            ***
// TODO: iOS 14 downgrade?
// TODO: gele error
// TODO: print statements weg

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
