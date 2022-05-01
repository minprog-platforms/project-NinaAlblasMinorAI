//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//
// TODO: animatie glaasje zakt in niveau
// TODO: alles
// TODO: terugknop

import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack {
            Color("Nina-lightpink")
                .edgesIgnoringSafeArea(.all)
            pinkFluid()
//                .offset(y: 30)
        }
    }
}

struct pinkFluid: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Nina-prettypink"), Color("Nina-hotpink")]), startPoint: .leading, endPoint: .trailing)
            .mask(
                VStack(spacing: 0) {
                    Image("water")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400)
                        .edgesIgnoringSafeArea(.horizontal)
                    Rectangle()
                        .frame(width: 400)
                })
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
