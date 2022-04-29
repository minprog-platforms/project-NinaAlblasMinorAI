//
//  TipsyTimerView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 25/04/2022.
//

import SwiftUI

enum userInputSteps: CGFloat {
    case gender
    case age
    case bodyWeightAndHeight
    case consumedDrinks
    case drinkingTime
    case drivingExperience
}

struct TipsyTimerView: View {
    @State var currentStep: userInputSteps = .gender
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button(action: {presentationMode.wrappedValue.dismiss()}, label: {
                        Label("TERUG", systemImage: "arrow.left")
                            .font(.system(size: 20))
                            .foregroundColor(Color("Tipsy-white"))
                    })
                    .padding(.leading)
                    Spacer()
                }
                ProgressView(value: currentStep.rawValue, total: 6)
                    .padding(.horizontal)
                    .accentColor(Color("Nina-pinkpurple")) 
                
                switch currentStep {
                case .gender:
                    GenderView()
                case .age:
                    AgeView()
                case .bodyWeightAndHeight:
                    WeightAndHeightView()
                case .consumedDrinks:
                    ConsumedDrinksView()
                case .drinkingTime:
                    DrinkingTimeView()
                case .drivingExperience:
                    DrivingExperienceView()
                }
                HStack {
                    Button("VOLGENDE") {
                        if currentStep.rawValue < 6 {
                            currentStep = userInputSteps(rawValue: currentStep.rawValue + 1) ?? .gender
                        
                            // TODO: als 6 bereikt is, wat dan?
                        }
                    }
                        .font(.system(size: 25, weight: .heavy))
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("Tipsy-white")/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                        .frame(width: 200, height: 100)
                    Image(systemName: "arrow.right")
                        .font(.system(size: 25, weight: .heavy))
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("Tipsy-white")/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                }
            }
        }
    }
}


struct TipsyTimerView_Previews: PreviewProvider {
    static var previews: some View {
        TipsyTimerView()
    }
}
