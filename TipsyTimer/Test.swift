import SwiftUI

//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//

import UserNotifications

struct PhoneView: View {

    var phoneNumber = "+31613535053"

    var body: some View {
        VStack {
            Button(action: {
                let phone = "tel://"
                let phoneNumberformatted = phone + phoneNumber
                guard let url = URL(string: phoneNumberformatted) else { return }
                UIApplication.shared.open(url)
               }) {
               Text(phoneNumber)
                .foregroundColor(.blue)
            }
        }
    }
}



struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView()
    }
}
