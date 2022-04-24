//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                HomeScreenView()
                    // is dit een probleem?:
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
//                    .offset(y: -60)
                // wat gaat hier nou nog verder in???? Moet ik deze uberhaupt nog hebben?
            }
        }
    }
}

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
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
                Button(action: {
                    print("Tipsy Timer!")
                }) {
                    Text("CHECK JE TIMER")
                        .font(.system(size: 55, weight: .black))
                        .foregroundColor(Color("Tipsy-white"))
                        .frame(width: 300, height: 300)
                        .background(Color("Nina-hotpink"))
//                        .border(/*@START_MENU_TOKEN@*/Color("Nina-sky")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color("Nina-dark"), radius: 5)

                }
                .frame(width: 300, height: 300)
                Spacer()
                Spacer()
                NavigationLink(destination: DisclaimerView(), label: {
                    Label("DISCLAIMER", systemImage: "exclamationmark.circle")
                        .frame(width: 350.0, height: 50)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color("Tipsy-white"))
                        .background(Color("Nina-sky"))
                        .cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color("Nina-dark"), radius: 1)

                })
                Spacer()
            }
        }
    }
}

struct DisclaimerView: View {
    var body: some View {
        Text("DISCLAIMER")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
//        HomeScreenView()
//        DisclaimerView()
    }
}
