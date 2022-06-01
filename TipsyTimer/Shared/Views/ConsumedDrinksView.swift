//
//  ConsumedDrinksView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

struct ConsumedDrinksView: View {
    @Binding var user: CurrentUser
    
    @State private var amountOfBeer = ""
    @State private var amountOfWine = ""
    @State private var amountOfCocktails = ""
    @State private var amountOfLiquor = ""
    
    var body: some View {
        VStack {
            Text("WAT HEB JE GEDRONKEN?")
                .font(.system(size: 30, weight: .heavy))
                .foregroundColor(Color("Tipsy-white"))
                .multilineTextAlignment(.center)
                .shadow(color: Color("Nina-dark"), radius: 5)
            
            // beer
            DrinkView(user: $user,
                      currentDrink: .beer,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            // wine
            DrinkView(user: $user,
                      currentDrink: .wine,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            // cocktails
            DrinkView(user: $user,
                      currentDrink: .cocktail,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            // liquor
            DrinkView(user: $user,
                      currentDrink: .liquor,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
        }
    }
}
