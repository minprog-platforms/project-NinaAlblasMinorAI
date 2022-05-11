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
    @Binding var user: CurrentUser
    
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
                        // TODO: functie?
                        if experiencedDriverButtonPressed == true {
                            experiencedDriverButtonPressed = false
                        }
                        startingDriverButtonPressed = true
                        user.drivingExperience = "beginnend"
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
                        // TODO: functie?
                        if startingDriverButtonPressed == true {
                            startingDriverButtonPressed = false
                        }
                        experiencedDriverButtonPressed = true
                        user.drivingExperience = "ervaren"

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
                Text("Als je autorijbewijs je eerste rijbewijs is, ben je de eerste 5 jaar beginnend bestuurder - dan mag je niet rijden met meer dan 0,2 promille alcohol in je bloed\n\nAls je meer dan 5 jaar in bezit bent van je rijbewijs, ben je een ervaren bestuurder - dan mag je niet rijden met meer dan 0,5 promille alcohol in je bloed")
                    .padding(.all)
                    .multilineTextAlignment(.center)
                    .frame(width: 375)
                    .background(Color("Tipsy-white"))
                    .cornerRadius(20)
                Spacer()
                Spacer()
            }
        }
    }
}

//struct DrivingExperienceView_Previews: PreviewProvider {
//    static var previews: some View {
//        DrivingExperienceView()
//    }
//}
