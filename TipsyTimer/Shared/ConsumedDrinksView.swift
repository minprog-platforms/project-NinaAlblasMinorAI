//
//  ConsumedDrinksView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

struct ConsumedDrinksView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("DRINKS")
                    .foregroundColor(Color("Tipsy-white"))

            }
        }
    }
}

struct ConsumedDrinksView_Previews: PreviewProvider {
    static var previews: some View {
        ConsumedDrinksView()
    }
}
