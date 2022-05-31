//
//  ConsumedDrinksView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//


import SwiftUI

enum Drink {
    case beer, wine, cocktail, liquor
}

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
            
            // bier
            DrinkView(user: $user,
                      currentDrink: .beer,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            // wijn
            DrinkView(user: $user,
                      currentDrink: .wine,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            
            // cocktail
            DrinkView(user: $user,
                      currentDrink: .cocktail,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            // sterke drank
            DrinkView(user: $user,
                      currentDrink: .liquor,
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
        }
    }
    
}

//struct ConsumedDrinksView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConsumedDrinksView(user: $user)
//    }
//}
