//
//  ConsumedDrinksView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//


import SwiftUI

struct ConsumedDrinksView: View {
    @State var amountOfBeer = "0"
    @State var amountOfWine = "0"
    @State var amountOfCocktails = "0"
    @State var amountOfLiquor = "0"
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("WAT HEB JE GEDRONKEN?")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .multilineTextAlignment(.center)
                    .shadow(color: Color("Nina-dark"), radius: 5)
                
                // bier
                VStack(spacing: -10) {
                    Text("BIER")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Nina-dark"))
                        .padding()
                        .frame(width: 340.0, height: 30.0)
                        .background(Color("Nina-lightpink"))
                        .cornerRadius(20)
                    HStack {
                        Image("beer")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 115)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfBeer)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
                            .onChange(of: amountOfBeer) { beers in
                                // dit lukt niet in een functie (zie onderaan)
                                let beerAmount = (Int(beers) ?? 0)
                                let wineAmount = (Int(amountOfWine) ?? 0)
                                let cocktailAmount = (Int(amountOfCocktails) ?? 0)
                                let liquorAmount = (Int(amountOfLiquor) ?? 0)
                                
                                tipsyDataClass.userConsumedAlcoholGrams = (beerAmount + wineAmount + cocktailAmount + liquorAmount) * 10
                                
                                // als hij het toch niet blijkt te doen:
                                // done button -> on change kan weg
                                // on change closure inclusief de andere drankjes krijgen
                                // aparte properties in de grote struct voor ieder drankje
                            }
                        Text("std. glazen")
                            .foregroundColor(Color("Tipsy-white"))
                            .fontWeight(.bold)
                    }
                    .padding(.trailing)
                    
                }
                .frame(width: 350.0, height: 150.0)
                .background(Color("Nina-lightpurple"))
                .cornerRadius(20)
                .shadow(color: Color("Nina-dark"), radius: 5)
                
                // wijn
                VStack(spacing: -10) {
                    Text("WIJN")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Nina-dark"))
                        .padding()
                        .frame(width: 340.0, height: 30.0)
                        .background(Color("Nina-lightpink"))
                        .cornerRadius(20)
                    HStack {
                        Image("wine")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 115)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfWine)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
                            .onChange(of: amountOfWine) { wine in
                                // dit lukt niet in een functie (zie onderaan)
                                let beerAmount = (Int(amountOfBeer) ?? 0)
                                let wineAmount = (Int(wine) ?? 0)
                                let cocktailAmount = (Int(amountOfCocktails) ?? 0)
                                let liquorAmount = (Int(amountOfLiquor) ?? 0)
                                
                                tipsyDataClass.userConsumedAlcoholGrams = (beerAmount + wineAmount + cocktailAmount + liquorAmount) * 10
                            }
                        Text("std. glazen")
                            .foregroundColor(Color("Tipsy-white"))
                            .fontWeight(.bold)
                    }
                    .padding(.trailing)
                    
                }
                .frame(width: 350.0, height: 150.0)
                .background(Color("Nina-lightpurple"))
                .cornerRadius(20)
                .shadow(color: Color("Nina-dark"), radius: 5)
                
                
                // cocktail
                VStack(spacing: -10) {
                    Text("COCKTAILS")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Nina-dark"))
                        .padding()
                        .frame(width: 340.0, height: 30.0)
                        .background(Color("Nina-lightpink"))
                        .cornerRadius(20)
                    HStack {
                        Image("cocktail")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 115)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfCocktails)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
                            .onChange(of: amountOfCocktails) { cocktails in
                                // dit lukt niet in een functie (zie onderaan)
                                let beerAmount = (Int(amountOfBeer) ?? 0)
                                let wineAmount = (Int(amountOfWine) ?? 0)
                                let cocktailAmount = (Int(cocktails) ?? 0)
                                let liquorAmount = (Int(amountOfLiquor) ?? 0)
                                
                                tipsyDataClass.userConsumedAlcoholGrams = (beerAmount + wineAmount + cocktailAmount + liquorAmount) * 10
                            }
                        Text("std. glazen")
                            .foregroundColor(Color("Tipsy-white"))
                            .fontWeight(.bold)
                    }
                    .padding(.trailing)
                    
                }
                .frame(width: 350.0, height: 150.0)
                .background(Color("Nina-lightpurple"))
                .cornerRadius(20)
                .shadow(color: Color("Nina-dark"), radius: 5)
                
                // shots
                VStack(spacing: -10) {
                    Text("SHOTS")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Nina-dark"))
                        .padding()
                        .frame(width: 340.0, height: 30.0)
                        .background(Color("Nina-lightpink"))
                        .cornerRadius(20)
                    HStack {
                        Image("liquor")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 115)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfLiquor)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
                            .onChange(of: amountOfLiquor) { liquor in
                                // dit lukt niet in een functie (zie onderaan)
                                let beerAmount = (Int(amountOfBeer) ?? 0)
                                let wineAmount = (Int(amountOfWine) ?? 0)
                                let cocktailAmount = (Int(amountOfCocktails) ?? 0)
                                let liquorAmount = (Int(liquor) ?? 0)
                                
                                tipsyDataClass.userConsumedAlcoholGrams = (beerAmount + wineAmount + cocktailAmount + liquorAmount) * 10
                            }
                        Text("std. glazen")
                            .foregroundColor(Color("Tipsy-white"))
                            .fontWeight(.bold)
                    }
                    .padding(.trailing)
                    
                }
                .frame(width: 350.0, height: 150.0)
                .background(Color("Nina-lightpurple"))
                .cornerRadius(20)
                .shadow(color: Color("Nina-dark"), radius: 5)
                
                
            }
            
        }
    }
    
    
}

struct ConsumedDrinksView_Previews: PreviewProvider {
    static var previews: some View {
        ConsumedDrinksView()
    }
}
