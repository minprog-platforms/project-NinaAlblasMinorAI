//
//  callTaxi.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 31/05/2022.
//

import Foundation
import SwiftUI


func callTaxi() -> ActionSheet {
    let taxiNumber = "+31851301675"

    return ActionSheet(
        title: Text("Bel een taxi"),
        buttons: [
            .default(Text(taxiNumber)) {
                guard let url = URL(string: "tel://" + taxiNumber) else { return }
                UIApplication.shared.open(url)
            },

            .default(Text("Nee hoor, ik wacht mijn timer af")) {},

            .default(Text("Nee, ik rijd met de BOB mee")) {}
        ]
    )
}
