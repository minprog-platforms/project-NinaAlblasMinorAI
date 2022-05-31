//
//  DrivingExperienceView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

enum ExperienceButtonPressed {
    case startingButton, expertButton, none
}

struct DrivingExperienceView: View {
    @Binding var user: CurrentUser
    
    @State private var experienceButtonPressed: ExperienceButtonPressed = .none
    
    var body: some View {
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
                    experienceButtonPressed = .startingButton
                    user.drivingExperience = .starting
                }) {
                    Image("scared")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        // square dus 2x width
                        .frame(width: convertWidth(150), height: convertWidth(150))
                        .foregroundColor(Color("Tipsy-white"))
                        .background((experienceButtonPressed == .startingButton) ? Color("Nina-darkpink") : Color("Nina-hotpink"))
                        .cornerRadius(20)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                }
                Text("OF")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Button(action: {
                    experienceButtonPressed = .expertButton
                    user.drivingExperience = .expert
                    
                }) {
                    Image("confident")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .frame(width: convertWidth(150), height: convertWidth(150))
                        .foregroundColor(Color("Tipsy-white"))
                        .background((experienceButtonPressed == .expertButton) ? Color("Nina-darkpink") : Color("Nina-hotpink"))
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
                    .frame(width: convertWidth(180))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Spacer()
                Spacer()
                Spacer()
                Text("ERVAREN")
                    .font(.system(size: 29, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .multilineTextAlignment(.center)
                    .frame(width: convertWidth(150))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Spacer()
                Spacer()
            }
            Spacer()
            Text("De eerste 5 jaar na het behalen van je autorijbewijs ben je een **beginnend bestuurder**\n\nBen je meer dan 5 jaar in het bezit van je autorijbewijs? Dan ben je een **ervaren bestuurder**")
                .padding(.all)
                .multilineTextAlignment(.center)
                .frame(width: convertWidth(375))
                .background(Color("Tipsy-white"))
                .cornerRadius(20)
            Spacer()
        }
    }
}

//struct DrivingExperienceView_Previews: PreviewProvider {
//    static var previews: some View {
//        DrivingExperienceView()
//    }
//}
