//
//  WeightAndHeightView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

struct WeightAndHeightView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("WEIGHT AND HEIGHT")
                    .foregroundColor(Color("Tipsy-white"))
//                Slider(va)

            }
        }
    }
}

struct WeightAndHeightView_Previews: PreviewProvider {
    static var previews: some View {
        WeightAndHeightView()
    }
}
