//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//

import SwiftUI

struct ResultView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let user = currentUser()
    
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    @State var timeRemaining = ""
    
    // 30 minutes from now
    // TODO: juiste tijd ipv 30 min
    let futureDate: Date = Calendar.current.date(byAdding: .minute, value: 30, to: Date()) ?? Date()
    
    func updateTimeRemaining() {
        // TODO: als hours == 0 --> niet de uren opvragen?
        
        let remaining = Calendar.current.dateComponents([.hour, .minute, .second], from: Date(), to: futureDate)
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
                updateTimeRemaining()
            }
        }
        
    }
}
struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
