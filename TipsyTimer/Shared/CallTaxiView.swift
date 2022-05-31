//
//  CallTaxiView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 31/05/2022.
//

import SwiftUI

struct CallTaxiView: View {
    let taxiNumber = "+31851301675"

    var body: some View {
        Button(action: {
            guard let url = URL(string: "tel://" + taxiNumber) else { return }
            UIApplication.shared.open(url)
        }, label: {
            Text(taxiNumber)
        })
        Button("Nee hoor, ik wacht mijn timer af", role: .cancel) { }
        Button("Nee, ik rijd met de BOB mee", role: .cancel) { }
        
//            .actionSheet(isPresented: $showingOptions) {
//                            ActionSheet(
//                                title: Text("Select a color"),
//                                buttons: [
//                                    .default(Text("Red")) {
//                                        selection = "Red"
//                                    },
//
//                                    .default(Text("Green")) {
//                                        selection = "Green"
//                                    },
//
//                                    .default(Text("Blue")) {
//                                        selection = "Blue"
//                                    },
//                                ]
//                            )
//                        }
    }
}

struct CallTaxiView_Previews: PreviewProvider {
    static var previews: some View {
        CallTaxiView()
    }
}
