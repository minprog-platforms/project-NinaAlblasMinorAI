//
//  DrinkingTimeView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI

struct DrinkingTimeView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("DRINKING TIME")
                    .foregroundColor(Color("Tipsy-white"))

            }
        }
    }
}

struct DrinkingTimeView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkingTimeView()
    }
}
