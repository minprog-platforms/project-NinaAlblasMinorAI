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
    
    @State var stepsCompleted = false
    
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
                    Button(action: {
                        let newStepValue = currentStep.rawValue + 1
                        
                        // als de eerstvolgende slide 6 zou zijn (die bestaat niet)
                        if newStepValue == 6 {
                            self.stepsCompleted = true
                        }
                        currentStep = userInputSteps(rawValue: newStepValue) ?? .gender
                    }) {
                        Label("VOLGENDE", systemImage: "arrow.right")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(Color("Tipsy-white"))
                            .shadow(color: Color("Nina-dark"), radius: 5)
                            .frame(width: 300, height: 100)
                    }
                    NavigationLink("", destination: ResultView(), isActive: $stepsCompleted)
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
