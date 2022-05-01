//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//
// TODO: animatie glaasje zakt in niveau
// TODO: timer in het getal
// 2 TODO'S HIERONDER

import SwiftUI

struct ResultView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color("Nina-lightpink")
                .edgesIgnoringSafeArea(.all)
            Image("beer-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 700, height: 1300)
                .offset(y: 250)
                // dit verhogen
            
            VStack {
                Text("TIPSY TIMER")
                    .font(.system(size: 60, weight: .black))
                    .foregroundColor(Color("Nina-hotpink"))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                Spacer()
                Text("WACHT NOG")
                    .font(.system(size: 50, weight: .black))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                Text("59")
                    .font(.system(size: 60, weight: .black))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                Text("MINUTEN")
                    .font(.system(size: 50, weight: .black))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                Spacer()
                NavigationLink(destination: HomeScreenView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)) {
                        Label("OPNIEUW", systemImage: "arrow.triangle.2.circlepath")
                            .foregroundColor(Color(.white))
                            .font(.system(size: 25, weight: .heavy))
                            .shadow(color: Color("Nina-dark"), radius: 1)
                    }
            }
            .frame(width: 400, height: 850)
        }
    }
}



struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
