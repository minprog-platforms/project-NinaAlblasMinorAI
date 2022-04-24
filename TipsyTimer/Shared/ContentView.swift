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
                LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(.all)
                HomeScreenView()
                    // is dit een probleem?:
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
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
                NavigationLink(destination: TipsyTimerView(), label: {
                    Text("CHECK JE TIMER")
                        .font(.system(size: 55, weight: .black))
                        .foregroundColor(Color("Tipsy-white"))
                        .frame(width: 300, height: 300)
                        .background(Color("Nina-hotpink"))
                        .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                })
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
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Label("DISCLAIMER", systemImage: "exclamationmark.circle")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(Color("Tipsy-white"))
                    .frame(width: 350, height: 50.0)
                    .background((Color("Nina-sky")))
                    .shadow(color: Color("Nina-dark"), radius: 1)

                List {
                    Text("Geen 18, geen alchol")
                    Text("Geniet, maar drink met mate")
                    Text("Vertrouw niet volledig op deze applicatie; laat de beslissing over of je de weg op kunt niet afhangen van het resultaat van je Tipsy Timer")
                    Text("Naast de gegevens die Tipsy Timer van je vraagt, spelen er ook andere factoren mee bij de absorptie en afbraak van alcohol, zoals drugs- of medicijngebruik, voeding en fysieke conditie")
                    Text("Rijden onder invloed kan fatale gevolgen hebben; breng jezelf en anderen niet in gevaar")
                    Text("De Tipsy Timer geeft alleen een schatting van de wachttijd en mag niet worden gebruikt om te bepalen of je nog mag autorijden")
                }
                .frame(width: 350.0, height: 600.0)
            }
        }
    }
}

struct TipsyTimerView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
//            .preferredColorScheme(.light)
//        HomeScreenView()
        DisclaimerView()
//        TipsyTimerView()
    }
}
