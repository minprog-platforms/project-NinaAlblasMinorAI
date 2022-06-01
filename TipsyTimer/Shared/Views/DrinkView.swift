//
//  DrinkView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 13/05/2022.
//

import SwiftUI

struct DrinkView: View {
    @Binding var user: CurrentUser

    let currentDrink: Drink
    
    @Binding var beers: String
    @Binding var wines: String
    @Binding var cocktails: String
    @Binding var liquors: String
    
    let drinkNames: [Drink: String] = [
        .beer: "BIER",
        .wine: "WIJN",
        .cocktail: "COCKTAILS",
        .liquor: "STERKE DRANK"
    ]
    
    let drinkImages: [Drink: Image] = [
        .beer: Image("beer"),
        .wine: Image("wine"),
        .cocktail: Image("cocktail"),
        .liquor: Image("liquor")
    ]
    
    var body: some View {
        VStack(spacing: -10) {
            Text(drinkNames[currentDrink]!)
                .fontWeight(.heavy)
                .foregroundColor(Color("Nina-dark"))
                .padding()
                .frame(width: convertWidth(340), height: convertHeight(30))
                .background(Color("Nina-lightpink"))
                .cornerRadius(20)
            HStack {
                drinkImages[currentDrink]!
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .frame(width: convertWidth(125), height: convertHeight(110))
                    .foregroundColor(Color("Tipsy-white"))
                TextField("0", text: drinkNames[currentDrink] == "BIER" ? $beers : drinkNames[currentDrink] == "WIJN" ? $wines : drinkNames[currentDrink] == "COCKTAILS" ? $cocktails : $liquors)
                    .padding(.horizontal)
                    .frame(width: convertWidth(75))
                    .textFieldStyle(.roundedBorder)
                    .onChange(of: drinkNames[currentDrink] == "BIER" ? beers : drinkNames[currentDrink] == "WIJN" ? wines : drinkNames[currentDrink] == "COCKTAILS" ? cocktails : liquors) { _ in
                        user.alcoholConsumption = totalAlcoholConsumption(beers: beers,
                                                                          wines: wines,
                                                                          cocktails: cocktails,
                                                                          liquors: liquors)
                    }
                Text("standaard\nglazen")
                    .foregroundColor(Color("Tipsy-white"))
                    .fontWeight(.bold)
            }
            .padding(.trailing)
            
        }
        .frame(width: convertWidth(350), height: convertHeight(145))
        .background(Color("Nina-lightpurple"))
        .cornerRadius(20)
        .shadow(color: Color("Nina-dark"), radius: 5)
    }
    
    func totalAlcoholConsumption(beers: String, wines: String, cocktails: String, liquors: String) -> Double {
        
        let beerAmount = amount(of: beers)
        let wineAmount = amount(of: wines)
        let cocktailAmount = amount(of: cocktails)
        let liquorAmount = amount(of: liquors)
        
        let totalAlcoholGrams = (beerAmount + wineAmount + cocktailAmount + liquorAmount) * 10

        return totalAlcoholGrams
    }
    
    func amount(of drink: String) -> Double {
        // error prevention in case someone enters a float with a comma
        if drink.contains(",") {
            return Double(drink.replacingOccurrences(of: ",", with: ".")) ?? 0
        }
        return Double(drink) ?? 0
    }
}

