//
//  ConsumedDrinksView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//


import SwiftUI

struct ConsumedDrinksView: View {
    @Binding var user: CurrentUser
    
    @State var amountOfBeer = ""
    @State var amountOfWine = ""
    @State var amountOfCocktails = ""
    @State var amountOfLiquor = ""
    
    var body: some View {
        VStack {
            Text("WAT HEB JE GEDRONKEN?")
                .font(.system(size: 30, weight: .heavy))
                .foregroundColor(Color("Tipsy-white"))
                .multilineTextAlignment(.center)
                .shadow(color: Color("Nina-dark"), radius: 5)
            
            // bier
            DrinkView(user: $user,
                      drinkName: "BIER",
                      drinkImage: Image("beer"),
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            // wijn
            DrinkView(user: $user,
                      drinkName: "WIJN",
                      drinkImage: Image("wine"),
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            
            // cocktail
            DrinkView(user: $user,
                      drinkName: "COCKTAILS",
                      drinkImage: Image("cocktail"),
                      beers: $amountOfBeer,
                      wines: $amountOfWine,
                      cocktails: $amountOfCocktails,
                      liquors: $amountOfLiquor)
            
            // sterke drank
            DrinkView(user: $user,
                      drinkName: "STERKE DRANK",
                      drinkImage: Image("liquor"),
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
