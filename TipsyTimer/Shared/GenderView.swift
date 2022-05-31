//
//  GenderInputView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 25/04/2022.
//

import SwiftUI

enum GenderButtonPressed {
    case femaleButton, maleButton, none
}

struct GenderView: View {
    @Binding var user: CurrentUser
    
    @State var genderButtonPressed: GenderButtonPressed = .none
    
    var body: some View {
        
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
                    genderButtonPressed = .maleButton
                    user.gender = .male
                }) {
                    Image("male")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .frame(width: convertWidth(150), height: convertWidth(150))
                        .foregroundColor(Color("Tipsy-white"))
                        .background((genderButtonPressed == .maleButton) ? Color("Nina-darkpink") : Color("Nina-hotpink"))
                        .cornerRadius(20)
                        .shadow(color: Color("Nina-dark"), radius: 5)
                }
                Text("OF")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Button(action: {
                    genderButtonPressed = .femaleButton
                    user.gender = .female
                }) {
                    Image("female")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .frame(width: convertWidth(150), height: convertWidth(150))
                        .foregroundColor(Color("Tipsy-white"))
                        .background((genderButtonPressed == .femaleButton) ? Color("Nina-darkpink") : Color("Nina-hotpink"))
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
                    .frame(width: convertWidth(150))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Spacer()
                Spacer()
                Text("VROUW")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .multilineTextAlignment(.center)
                    .frame(width: convertWidth(150))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Spacer()
            }
            Spacer()
            Spacer()
            
        }
    }
}

//struct GenderInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        GenderView()
//    }
//}
