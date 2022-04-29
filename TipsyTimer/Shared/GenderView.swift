//
//  GenderInputView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 25/04/2022.
//

import SwiftUI

struct GenderView: View {
    @State var maleButtonPressed = false
    @State var femaleButtonPressed = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("MET WELK GESLACHT IDENTIFICEER JE JE HET MEEST?")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .multilineTextAlignment(.center)
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Spacer()
                HStack {
                    Button(action: {
                        if femaleButtonPressed == true {
                            femaleButtonPressed.toggle()
                        }
                        maleButtonPressed.toggle()
                    }) {
                        Image("male")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color("Tipsy-white"))
                            .background(maleButtonPressed ? Color("Nina-darkpink") : Color("Nina-hotpink"))
                            .cornerRadius(20)
                            .shadow(color: Color("Nina-dark"), radius: 5)
                    }
                    Text("OF")
                        .font(.system(size: 30, weight: .heavy))
                        .foregroundColor(Color("Tipsy-white"))
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    Button(action: {
                        if maleButtonPressed == true {
                            maleButtonPressed.toggle()
                        }
                        femaleButtonPressed.toggle()
                    }) {
                        Image("female")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color("Tipsy-white"))
                            .background(femaleButtonPressed ? Color("Nina-darkpink") : Color("Nina-hotpink"))
                            .cornerRadius(20)
                            .shadow(color: Color("Nina-dark"), radius: 5)
                    }
                    
                }
                HStack {
                    Spacer()
                    Text("MAN")
                        .font(.system(size: 30, weight: .heavy))
                        .foregroundColor(Color("Tipsy-white"))
                        .multilineTextAlignment(.center)
                        .frame(width: 150)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    Spacer()
                    Spacer()
                    Text("VROUW")
                        .font(.system(size: 30, weight: .heavy))
                        .foregroundColor(Color("Tipsy-white"))
                        .multilineTextAlignment(.center)
                        .frame(width: 150)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    Spacer()
                }
                Spacer()
                Spacer()
                
            }
        }
    }
}

struct GenderInputView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
