//
//  DisclaimerView.swift
//  TipsyTimer (iOS)
//
//  Created by Nina Alblas on 24/04/2022.
//

import SwiftUI

struct DisclaimerView: View {
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Label("DISCLAIMER", systemImage: "exclamationmark.circle")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(Color("Tipsy-white"))
                    .frame(width: 350, height: 50.0)
                    .background((Color("Nina-sky")))
                    .cornerRadius(20)
                    .shadow(color: Color("Nina-dark"), radius: 1)

                List {
                    Text("Geen 18, geen alchol")
                        .font(.system(size: 15))

                    Text("Geniet, maar drink met mate")
                        .font(.system(size: 15))

                    Text("Rijden onder invloed kan fatale gevolgen hebben; breng jezelf en anderen niet in gevaar")
                        .font(.system(size: 15))

                    Text("De Tipsy Timer geeft alleen een schatting van de wachttijd en mag niet worden gebruikt om te bepalen of je nog mag autorijden")
                        .font(.system(size: 15))
                    
                    Text("Vertrouw niet volledig op deze applicatie; laat de beslissing over of je de weg op kunt niet afhangen van het resultaat van de Tipsy Timer")
                        .font(.system(size: 15))

                    Text("Naast de gegevens die Tipsy Timer van je vraagt, spelen er ook andere factoren mee bij de absorptie en afbraak van alcohol, zoals voeding, fysieke conditie en drugs- of medicijngebruik")
                        .font(.system(size: 15))
                }
                .frame(width: 350.0, height: 660.0)
                .cornerRadius(20)
                
                NavigationLink(destination: HomeScreenView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)) {
                    Label("AKKOORD", systemImage: "checkmark")
                        .font(.system(size: 25, weight: .black))
                        .foregroundColor(Color("Tipsy-white"))
                        .frame(width: 200, height: 50)
                        .background(Color("Nina-hotpink"))
                        .cornerRadius(20)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    
                }
                .frame(width: 200, height: 50)
            }
        }
    }
}


struct DisclaimerView_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerView()
    }
}
