//
//  ContentView.swift
//  Shared
//
//  Created by Nina Alblas on 24/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Tipsy-white").edgesIgnoringSafeArea(.all)
            VStack {
                Text("TIPSY TIMER")
                    .font(.system(size: 60, weight: .black))
                    .foregroundColor(Color("Tipsy-blue"))
                    .frame(width: 500.0, height: 60)
                Text("HOE LANG NOG VOOR JE WEER DE WEG OP KUNT?")
                // hit the road, jack
                // on the road again
                    .font(.system(size: 25, weight: .heavy))
                    .foregroundColor(Color("Tipsy-darkpink"))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 70)
                Spacer()

                Button(action: {
                    print("Tipsy Timer!")
                }) {
                    Text("CHECK JE TIMER")
                        .font(.system(size: 60, weight: .black))
                        .foregroundColor(Color("Tipsy-white"))
                        .frame(width: 350, height: 350)
                        .background(Color("Tipsy-orange"))
                }
                .frame(width: 350, height: 350)
                Spacer()
                Button(action: {
                    print("Disclaimer")
                }) {
                    Label("DISCLAIMER", systemImage: "exclamationmark.circle")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(Color("Tipsy-darkpink"))
                }
                Spacer()
            }
            
//            HStack {
//                Color("Tipsy-1")
//                Color("Tipsy-2")
//                Color("Tipsy-3")
//                Color("Tipsy-4")
//                Color("Tipsy-5")
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
