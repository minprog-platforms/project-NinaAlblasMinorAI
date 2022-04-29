//
//  DisclaimerView.swift
//  TipsyTimer (iOS)
//
//  Created by Nina Alblas on 24/04/2022.
//

import SwiftUI

struct DisclaimerView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button(action: {presentationMode.wrappedValue.dismiss()}, label: {
                        Label("TERUG", systemImage: "arrow.left")
                            .font(.system(size: 20))
                            .foregroundColor(Color("Tipsy-white"))
                    })
                    .padding(.leading)
                    Spacer()
                }
                Label("DISCLAIMER", systemImage: "exclamationmark.circle")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(Color("Tipsy-white"))
                    .frame(width: 350, height: 50.0)
                    .background((Color("Nina-sky")))
                    .shadow(color: Color("Nina-dark"), radius: 1)

                List {
                    Text("Geen 18, geen alchol")
                        .font(.system(size: 15))
                        .padding(.vertical)

                    Text("Geniet, maar drink met mate")
                        .font(.system(size: 15))
                        .padding(.vertical)

                    Text("Vertrouw niet volledig op deze applicatie; laat de beslissing over of je de weg op kunt niet afhangen van het resultaat van je Tipsy Timer")
                        .font(.system(size: 15))
                        .padding(.vertical)

                    Text("Naast de gegevens die Tipsy Timer van je vraagt, spelen er ook andere factoren mee bij de absorptie en afbraak van alcohol, zoals drugs- of medicijngebruik, voeding en fysieke conditie")
                        .font(.system(size: 15))
                        .padding(.vertical)
                        .frame(height: 140.0)

                    Text("Rijden onder invloed kan fatale gevolgen hebben; breng jezelf en anderen niet in gevaar")
                        .font(.system(size: 15))
                        .padding(.vertical)

                    Text("De Tipsy Timer geeft alleen een schatting van de wachttijd en mag niet worden gebruikt om te bepalen of je nog mag autorijden")
                        .font(.system(size: 15))
                        .padding(.vertical)
                }
                .frame(width: 350.0, height: 660.0)
                
            }
        }
    }
}


struct DisclaimerView_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerView()
    }
}
