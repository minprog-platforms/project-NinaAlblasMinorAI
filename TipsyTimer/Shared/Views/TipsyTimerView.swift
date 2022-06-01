//
//  TipsyTimerView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 25/04/2022.
//

import SwiftUI

struct TipsyTimerView: View {
    @Environment(\.presentationMode) var presentationMode

    @State private var currentStep: UserInputSteps = .gender
    @State private var user = CurrentUser()
    @State private var stepsCompleted = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    
                    // go back to home screen
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
                    
                    // go a step back
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
                    
                    // go to the next step
                    Button(action: {
                        let newStepValue = currentStep.rawValue + 1
                        
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
