//
//  DrivingExperienceView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

struct DrivingExperienceView: View {
    @State var startingDriverButtonPressed = false
    @State var experiencedDriverButtonPressed = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("WAT VOOR BESTUURDER BEN JE?")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .multilineTextAlignment(.center)
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Spacer()
                HStack {
                    Button(action: {
                        if experiencedDriverButtonPressed == true {
                            experiencedDriverButtonPressed.toggle()
                        }
                        startingDriverButtonPressed.toggle()
                    }) {
                        Image("scared")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color("Tipsy-white"))
                            .background(startingDriverButtonPressed ? Color("Nina-darkpink") : Color("Nina-hotpink"))
                            .cornerRadius(20)
                            .shadow(color: Color("Nina-dark"), radius: 5)
                    }
                    Text("OF")
                        .font(.system(size: 30, weight: .heavy))
                        .foregroundColor(Color("Tipsy-white"))
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    Button(action: {
                        if startingDriverButtonPressed == true {
                            startingDriverButtonPressed.toggle()
                        }
                        experiencedDriverButtonPressed.toggle()
                    }) {
                        Image("confident")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color("Tipsy-white"))
                            .background(experiencedDriverButtonPressed ? Color("Nina-darkpink") : Color("Nina-hotpink"))
                            .cornerRadius(20)
                            .shadow(color: Color("Nina-dark"), radius: 5)
                    }
                    
                }
                HStack {
                    Spacer()
                    Text("BEGINNEND")
                        .font(.system(size: 29, weight: .heavy))
                        .foregroundColor(Color("Tipsy-white"))
                        .multilineTextAlignment(.center)
                        .frame(width: 180)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("ERVAREN")
                        .font(.system(size: 29, weight: .heavy))
                        .foregroundColor(Color("Tipsy-white"))
                        .multilineTextAlignment(.center)
                        .frame(width: 150)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    Spacer()
                    Spacer()
                }
                Spacer()
                Spacer()
                
            }
        }
    }
}

struct DrivingExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        DrivingExperienceView()
    }
}
