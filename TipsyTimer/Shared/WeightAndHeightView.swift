//
//  WeightAndHeightView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

struct WeightAndHeightView: View {
    @Binding var user: CurrentUser
    
    @State private var bodyHeight: Double = 1.80
    @State private var bodyWeight: Double = 75
    
    var body: some View {
        VStack() {
            Spacer()
            
            Text("HOE LANG BEN JE?")
                .font(.system(size: 30, weight: .heavy))
                .foregroundColor(Color("Tipsy-white"))
                .shadow(color: Color("Nina-dark"), radius: 5)
            Text(String(format: "Lengte: %.2f m\n\n", bodyHeight))
                .foregroundColor(Color("Tipsy-white"))
                .font(.system(size: 20))
            Slider(value: $bodyHeight, in: 1.30...2.20, step: 0.01)
                .padding(.horizontal)
                .tint(Color("Nina-hotpink"))
                .onChange(of: bodyHeight) { height in
                    user.height = height * 100
                }
            
            
            Spacer()
            
            Text("HOEVEEL WEEG JE?")
                .font(.system(size: 30, weight: .heavy))
                .foregroundColor(Color("Tipsy-white"))
                .shadow(color: Color("Nina-dark"), radius: 5)
            Text(String(format: "Gewicht: %.0f kg\n\n", bodyWeight))
                .foregroundColor(Color("Tipsy-white"))
                .font(.system(size: 20))
            Slider(value: $bodyWeight, in: 40...200, step: 1.0)
                .padding(.horizontal)
                .tint(Color("Nina-hotpink"))
                .onChange(of: bodyWeight) { weight in
                    user.weight = weight
                }
            
            Spacer()
            
            
        }
    }
}

//struct WeightAndHeightView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeightAndHeightView()
//    }
//}
