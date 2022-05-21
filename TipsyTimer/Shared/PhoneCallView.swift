//
//  PhoneCallView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 21/05/2022.
//

import SwiftUI

struct PhoneCallView: View {
    var phoneNumber = "085 130 1675"
    @State private var showingAlert = false

    
    var body: some View {
//        ZStack {
//            Rectangle()
//                .cornerRadius(25)
//                .foregroundColor(Color("Nina-hotpink"))
//                .frame(width: 330, height: 150)
//
//            VStack {
//                Text("DIT GAAT NOG WEL\nFF DUREN...")
//                    .fontWeight(.heavy)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 330)
//                Text("TAXI")
//                Button(action: {
//                    let phone = "tel://"
//                    let phoneNumberformatted = phone + phoneNumber
//                    guard let url = URL(string: phoneNumberformatted) else { return }
//                    UIApplication.shared.open(url)
//                }) {
//                    Text(phoneNumber)
//                }
//            }
//
//
//        }
//        .foregroundColor(Color("Tipsy-white"))
//        .font(.system(size: 20))
        // TODO: state var implementeren + opmaak + binding
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Bel een taxi", isPresented: $showingAlert) {
            Button(action: {
                let phone = "tel://"
                let phoneNumberformatted = phone + phoneNumber
                guard let url = URL(string: phoneNumberformatted) else { return }
                UIApplication.shared.open(url)
            }, label: {
                Text(phoneNumber)
            })
            Button("Nee, ik rijd met de BOB mee", role: .cancel) { }
        }
        
        
        
        
        
        
    }
}

struct PhoneCallView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCallView()
    }
}

