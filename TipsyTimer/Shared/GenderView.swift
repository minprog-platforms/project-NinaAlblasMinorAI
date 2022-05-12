//
//  GenderInputView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 25/04/2022.
//

import SwiftUI

struct GenderView: View {
    @Binding var user: CurrentUser

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
                        // TODO: Dit in een functie? Of een enum? Of een enkele bool die bij true = female bijv
                        if femaleButtonPressed == true {
                            femaleButtonPressed = false
                        }
                        maleButtonPressed = true
                        user.gender = "man"
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
                        // TODO: Dit in een functie?
                        if maleButtonPressed == true {
                            maleButtonPressed = false
                        }
                        femaleButtonPressed = true
                        
                        user.gender = "vrouw"
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

//struct GenderInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        GenderView()
//    }
//}
