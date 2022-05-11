//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//

import SwiftUI

struct ResultView: View {
    @Binding var user: CurrentUser

    
    @Environment(\.presentationMode) var presentationMode
        
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    @State var timeRemaining = ""
    
//    var waitingMinutes: Int
    var futureDate: Date = Date()
    
    // TODO: DEZE DINGEN BUITEN INIT GEEFT FOUTMELDING
    init(user: Binding<CurrentUser>) {
        self._user = user
        // _user bevat daadwerkleijke binding, @binding maakt automatisch een binding object die hoort bij user variabele
//        self.waitingMinutes = 10
//        self.waitingMinutes =
        
        futureDate = Calendar.current.date(byAdding: .minute, value: self.user.waitingTime, to: Date())!
        // force unwrappen zodat ie crasht
            // beter: if let -->handelen als het misgaat
        
    }
    
    func updateTimeRemaining() {
        // TODO: als hours == 0 --> niet de uren opvragen?
        
        let remaining = Calendar.current.dateComponents([.hour, .minute, .second], from: Date(), to: self.futureDate)
        let hoursRemaining = remaining.hour ?? 0
        let minutesRemaining = remaining.minute ?? 0
        let secondsRemaining = remaining.second ?? 0
        timeRemaining = "\(hoursRemaining):\(minutesRemaining):\(secondsRemaining)"
    }
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"),
                                                       Color("Nina-sky")]),
                           startPoint: .leading,
                           endPoint: .trailing)
            .edgesIgnoringSafeArea(.all)
            Image("beer-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 700, height: 1300)
                .offset(y: 260)
            
            VStack {
                Text("TIPSY TIMER")
                    .font(Font.system(size: 60, weight: .black))
                    .overlay {
                        LinearGradient(
                            colors: [Color("Nina-hotpink"),
                                     Color("Nina-pinkpurple"),
                                     Color("Nina-pink"),
                                     Color("Nina-prettypink")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .mask(
                            Text("TIPSY TIMER")
                                .font(Font.system(size: 60, weight: .black))
                        )
                    }
                    .shadow(color: Color("Nina-dark"), radius: 5)
                
                
                
                Spacer()
                
                Text(timeRemaining)
                    .font(.system(size: 50, weight: .black))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                
//                Text("Gender = \(tipsyDataStruct.userGender)\nAge = \(tipsyDataStruct.userAge)\nExperience = \(tipsyDataStruct.userDrivingExperience)\nDrinking time = \(tipsyDataStruct.userDrinkingTime)\nAlcohol grams = \(tipsyDataStruct.userConsumedAlcoholGrams)\nWeight = \(tipsyDataStruct.userWeight)\nHeight = \(tipsyDataStruct.userHeight)")
                
                Spacer()
                NavigationLink(destination: HomeScreenView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)) {
                        Label("OPNIEUW", systemImage: "arrow.triangle.2.circlepath")
                            .foregroundColor(Color(.white))
                            .font(.system(size: 25, weight: .heavy))
                            .shadow(color: Color("Nina-dark"), radius: 5)
                    }
            }
            .frame(width: 400, height: 850)
            
            .onReceive(timer) { _ in
                self.updateTimeRemaining()
            }
        }
        
    }
}
//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView()
//    }
//}
