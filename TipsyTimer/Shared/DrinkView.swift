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
                .frame(width: getFrameWidth(340), height: getFrameHeight(30))
                .background(Color("Nina-lightpink"))
                .cornerRadius(20)
            HStack {
                drinkImage
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .frame(width: getFrameWidth(125), height: getFrameHeight(110))
                    .foregroundColor(Color("Tipsy-white"))
                TextField("0", text: drinkName == "BIER" ? $beers : drinkName == "WIJN" ? $wines : drinkName == "COCKTAILS" ? $cocktails : $liquors) // TODO: MAKE INTO ENUM?
                    .padding(.horizontal)
                    .frame(width: getFrameWidth(75))
                    .textFieldStyle(.roundedBorder)
                    .onChange(of: drinkName == "BIER" ? beers : drinkName == "WIJN" ? wines : drinkName == "COCKTAILS" ? cocktails : liquors) { _ in // TODO: MAKE INTO ENUM?
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
        .frame(width: getFrameWidth(350), height: getFrameHeight(145))
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
        
//        print(beerAmount, wineAmount, cocktailAmount, liquorAmount)
//        print(totalAlcoholGrams)

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

//struct DrinkView_Previews: PreviewProvider {
//    static var previews: some View {
//        DrinkView()
//    }
//}
