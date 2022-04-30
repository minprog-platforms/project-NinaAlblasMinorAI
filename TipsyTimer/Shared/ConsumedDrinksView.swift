//
//  ConsumedDrinksView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//
// TODO: ML VS STANDAARDGLAZEN TOGGLE
// TODO: % ALCOHOL
// TODO: NAAM (BIER, WIJN ETC.)


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
                VStack {
                    
                    // bier
                    HStack {
                        Image("beer")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfBeer)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
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
                VStack {
                    
                    // bier
                    HStack {
                        Image("wine")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfWine)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
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
                VStack {
                    
                    // bier
                    HStack {
                        Image("cocktail")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfCocktails)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
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
                
                // sterke drank
                VStack {
                    
                    // bier
                    HStack {
                        Image("liquor")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 125, height: 125)
                            .foregroundColor(Color("Tipsy-white"))
                        TextField("", text: $amountOfLiquor)
                            .padding(.horizontal)
                            .frame(width: 75.0)
                            .textFieldStyle(.roundedBorder)
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
