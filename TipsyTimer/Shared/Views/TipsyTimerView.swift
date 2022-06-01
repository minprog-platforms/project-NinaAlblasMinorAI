//
//  TipsyTimerView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 25/04/2022.
//

import SwiftUI

struct TipsyTimerView: View {
    @State private var currentStep: UserInputSteps = .gender
    @State private var user = CurrentUser()
    @Environment(\.presentationMode) var presentationMode
    
    @State private var stepsCompleted = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Label("TERUG", systemImage: "arrow.left")
                            .font(.system(size: 20))
                            .foregroundColor(Color("Tipsy-white"))
                    }
                    .padding(.leading)
                    Spacer()
                }
                ProgressView(value: currentStep.rawValue, total: 6)
                    .padding(.horizontal)
                    .accentColor(Color("Nina-pinkpurple"))
                
                switch currentStep {
                case .gender:
                    GenderView(user: $user)
                case .age:
                    AgeView(user: $user)
                case .bodyWeightAndHeight:
                    WeightAndHeightView(user: $user)
                case .consumedDrinks:
                    ConsumedDrinksView(user: $user)
                case .drinkingTime:
                    DrinkingTimeView(user: $user)
                case .drivingExperience:
                    DrivingExperienceView(user: $user)
                }
                
                HStack {
                    
                    // een stapje terug
                    Button(action: {
                        let newStepValue = currentStep.rawValue - 1
                        
                        currentStep = UserInputSteps(rawValue: newStepValue) ?? .gender
                    }) {
                        Label("", systemImage: "arrow.left")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(Color("Tipsy-white"))
                            .shadow(color: Color("Nina-dark"), radius: 5)
                            .labelStyle(.iconOnly)
                            .frame(width: convertWidth(125), height: convertHeight(100))
                    }

                    
                    Button(action: {
                        let newStepValue = currentStep.rawValue + 1
                        
                        // als de eerstvolgende slide 6 zou zijn (die bestaat niet)
                        if newStepValue == 6 {
                            self.stepsCompleted = true
                        }
                        currentStep = UserInputSteps(rawValue: newStepValue) ?? .gender
                    }) {
                        HStack {
                            Text("VOLGENDE")
                                .font(.system(size: 25, weight: .heavy))
                                .foregroundColor(Color("Tipsy-white"))
                                .shadow(color: Color("Nina-dark"), radius: 5)
                            Label("", systemImage: "arrow.right")
                                .font(.system(size: 25, weight: .heavy))
                                .foregroundColor(Color("Tipsy-white"))
                                .shadow(color: Color("Nina-dark"), radius: 5)
                                .labelStyle(.iconOnly)
                                .frame(width: convertWidth(125), height: convertHeight(100))
                        }
                    }
                                        
                    NavigationLink("", destination: ResultView(user: $user)
                        .navigationBarTitle("")
                        .navigationBarHidden(true), isActive: $stepsCompleted)
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
