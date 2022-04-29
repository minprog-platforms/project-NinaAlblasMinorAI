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
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("TIPSY TIMER")
                    .font(.system(size: 60, weight: .black))
                    .foregroundColor(Color("Nina-purple"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                
                Text("Zie in één oogopslag\nwanneer je weer de weg op mag!")
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .foregroundColor(Color("Nina-pink"))
                    .multilineTextAlignment(.center)
                    .shadow(color: Color("Nina-dark"), radius: 2)

                Spacer()
                Spacer()
                NavigationLink(destination: TipsyTimerView().navigationBarTitle("").navigationBarHidden(true), label: {
                    Text("CHECK JE TIMER")
                        .font(.system(size: 55, weight: .black))
                        .foregroundColor(Color("Tipsy-white"))
                        .frame(width: 300, height: 300)
                        .background(Color("Nina-hotpink"))
                        .cornerRadius(25.0)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    
                })
                .frame(width: 300, height: 300)
                
                Spacer()
                Spacer()
                NavigationLink(destination: DisclaimerView().navigationBarTitle("").navigationBarHidden(true), label: {
                    Label("DISCLAIMER", systemImage: "exclamationmark.circle")
                        .frame(width: 350.0, height: 50)
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