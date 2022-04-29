//
//  WeightAndHeightView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

struct WeightAndHeightView: View {
    @State var bodyHeight: Double = 1.80
    @State var bodyWeight: Double = 75
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                Text("HOE LANG BEN JE?")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Slider(value: $bodyHeight, in: 1.30...2.20, step: 0.01)
                    .padding(.horizontal)
                    .tint(Color("Nina-hotpink"))
                Text(String(format: "Lengte: %.2f m", bodyHeight))
                    .foregroundColor(Color("Tipsy-white"))
                    .font(.system(size: 20))
                
                Spacer()
                
                Text("HOEVEEL WEEG JE?")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Slider(value: $bodyWeight, in: 40...200, step: 1.0)
                    .padding(.horizontal)
                    .tint(Color("Nina-hotpink"))
                Text(String(format: "Gewicht: %.0f kg", bodyWeight))
                    .foregroundColor(Color("Tipsy-white"))
                    .font(.system(size: 20))
                
                Spacer()
                
                // Ik moet de data dus opslaan in een nieuwe struct, niet als losse state variables, want dat is alles opslaan in de View ipv op je harde schijf
                // * 100 doen --> in centimeters

            }
        }
    }
}

struct WeightAndHeightView_Previews: PreviewProvider {
    static var previews: some View {
        WeightAndHeightView()
    }
}
