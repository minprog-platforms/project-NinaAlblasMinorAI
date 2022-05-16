//
//  HomeScreenView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 25/04/2022.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"),
                                                       Color("Nina-sky")]),
                           startPoint: .leading,
                           endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            Image("tipsytimerlogo")
                .offset(x: getOffsetX(-20))
            VStack {
                Spacer()

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
                                .font(.system(size: 60, weight: .black))
                        )
                    }
                

                Text("Zie in één oogopslag\nwanneer je weer de weg op mag!")
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .foregroundColor(Color("Nina-prettypink"))
                    .multilineTextAlignment(.center)
                    .shadow(color: Color("Nina-dark"), radius: 2)
                
                Spacer()
                Spacer()

                NavigationLink(destination: TipsyTimerView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)) {
                    Text("CHECK JE TIMER")
                        .font(.system(size: 55, weight: .black))
                        .foregroundColor(Color("Tipsy-white"))
                        // square dus 2x width
                        .frame(width: getFrameWidth(300), height: getFrameWidth(300))
                        .background(Color("Nina-hotpink"))
                        .cornerRadius(25.0)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    
                }
                .frame(width: getFrameWidth(300), height: getFrameWidth(300))
                
                Spacer()
                Spacer()
                NavigationLink(destination: DisclaimerView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true), label: {
                    Label("DISCLAIMER", systemImage: "exclamationmark.circle")
                        .frame(width: getFrameWidth(350), height: getFrameHeight(50))
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color("Tipsy-white"))
                        .background(Color("Nina-sky"))
                        .cornerRadius(6.0)
                        .shadow(color: Color("Nina-dark"), radius: 1)

                })
                Spacer()
            }

        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
