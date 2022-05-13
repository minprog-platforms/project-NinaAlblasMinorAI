//
//  DrinkView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 13/05/2022.
//

import SwiftUI

struct DrinkView: View {
    @Binding var user: CurrentUser

    let drinkName: String
    let drinkImage: Image
    
    @Binding var beers: String
    @Binding var wines: String
    @Binding var cocktails: String
    @Binding var liquors: String
    
    
    var body: some View {
        VStack(spacing: -10) {
            Text(drinkName)
                .fontWeight(.heavy)
                .foregroundColor(Color("Nina-dark"))
                .padding()
                .frame(width: 340.0, height: 30.0)
                .background(Color("Nina-lightpink"))
                .cornerRadius(20)
            HStack {
                drinkImage
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .frame(width: 125, height: 110)
                    .foregroundColor(Color("Tipsy-white"))
                TextField("", text: drinkName == "BIER" ? $beers : drinkName == "WIJN" ? $wines : drinkName == "COCKTAILS" ? $cocktails : $liquors) //$beers) // TODO: MAKE INTO ENUM?
                    .padding(.horizontal)
                    .frame(width: 75.0)
                    .textFieldStyle(.roundedBorder)
                    .onChange(of: drinkName == "BIER" ? beers : drinkName == "WIJN" ? wines : drinkName == "COCKTAILS" ? cocktails : liquors) { _ in // TODO: MAKE INTO ENUM?
                        user.alcoholConsumption = totalAlcoholConsumption(beers: beers,
                                                                          wines: wines,
                                                                          cocktails: cocktails,
                                                                          liquors: liquors)
                    }
                Text("std. glazen")
                    .foregroundColor(Color("Tipsy-white"))
                    .fontWeight(.bold)
            }
            .padding(.trailing)
            
        }
        .frame(width: 350.0, height: 145.0)
        .background(Color("Nina-lightpurple"))
        .cornerRadius(20)
        .shadow(color: Color("Nina-dark"), radius: 5)
    }
    
    func totalAlcoholConsumption(beers: String, wines: String, cocktails: String, liquors: String) -> Double {
        let beerAmount = (Double(beers) ?? 0)
        let wineAmount = (Double(wines) ?? 0)
        let cocktailAmount = (Double(cocktails) ?? 0)
        let liquorAmount = (Double(liquors) ?? 0)
        
        let totalAlcoholGrams = (beerAmount + wineAmount + cocktailAmount + liquorAmount) * 10
        
//        print(beerAmount, wineAmount, cocktailAmount, liquorAmount)
//        print(totalAlcoholGrams)

        return totalAlcoholGrams
    }
}

//struct DrinkView_Previews: PreviewProvider {
//    static var previews: some View {
//        DrinkView()
//    }
//}