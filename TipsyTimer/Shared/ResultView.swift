//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//
// TODO: animatie glaasje zakt in niveau
// TODO: timer in het getal
// 2 TODO'S HIERONDER

import SwiftUI

struct ResultView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("Nina-purtypink")
                .edgesIgnoringSafeArea(.all)
//            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"),
//                                                       Color("Nina-sky")]),
//                           startPoint: .leading,
//                           endPoint: .trailing)
//                .edgesIgnoringSafeArea(.all)
            Image("beer-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 700, height: 1300)
                .offset(y: 260)
                // dit verhogen
            
            VStack {
                Text("TIPSY TIMER")
                    .font(Font.system(size: 60, weight: .black))
                    .overlay {
                        LinearGradient(
                            colors: [Color("Nina-hotpink"),
                                     Color("Nina-pinkpurple"),
                                     Color("Nina-pink"),
                                     Color("Nina-prettypink")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .mask(
                            Text("TIPSY TIMER")
                                .font(Font.system(size: 60, weight: .black))
                        )
                    }
                    .shadow(color: Color("Nina-dark"), radius: 1)
//                Text("TIPSY TIMER")
//                    .font(.system(size: 60, weight: .black))
//                    .foregroundColor(Color("Nina-hotpink"))
//                    .shadow(color: Color("Nina-sky"), radius: 1)
                
                
                Spacer()
                Text("WACHT NOG")
                    .font(.system(size: 50, weight: .black))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                Text("60")
                    .font(.system(size: 60, weight: .black))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                Text("MINUTEN")
                    .font(.system(size: 50, weight: .black))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                
                // SAMENVATTING VAN DE OPGESLAGEN DATA, KLOPT!!!
                // ALLEEN CONSUMED DRINKS MOETEN NOG 
                Text("Gender = \(tipsyDataStruct.userGender)\nAge = \(tipsyDataStruct.userAge)\nExperience = \(tipsyDataStruct.userDrivingExperience)\nDrinking time = \(tipsyDataStruct.userDrinkingTime)\nAlcohol grams = \(tipsyDataStruct.userConsumedAlcohol)\nWeight = \(tipsyDataStruct.userWeight)\nHeight = \(tipsyDataStruct.userHeight)")
                    .foregroundColor(.white)
                
                Spacer()
                NavigationLink(destination: HomeScreenView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)) {
                        Label("OPNIEUW", systemImage: "arrow.triangle.2.circlepath")
                            .foregroundColor(Color(.white))
                            .font(.system(size: 25, weight: .heavy))
                            .shadow(color: Color("Nina-dark"), radius: 1)
                    }
            }
            .frame(width: 400, height: 850)
        }
    }
}

// hier de functie berekenen:

// gender = vrouw of man
// age = int
// TODO: weight / height = int
// ervaring = beginnnend vs ervaren
// tijd = int
// TODO: alcohol = grams = Double?

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}