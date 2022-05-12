//
//  Test.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 11/05/2022.
//

import SwiftUI

struct Test: View {
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    @State var timeRemaining = ""
    
    var futureDate: Date = Date()
    
    @State var beerLevel: CGFloat = 100.0
    @State var waitingSeconds: Int = 600
    
    init() {
        futureDate = Calendar.current.date(byAdding: .second, value: waitingSeconds, to: Date())!
    }
    
    func update() {
        let remaining = Calendar.current.dateComponents([.hour, .minute, .second], from: Date(), to: futureDate)
        let hoursRemaining = remaining.hour ?? 0
        let minutesRemaining = remaining.minute ?? 0
        let secondsRemaining = remaining.second ?? 0
        timeRemaining = "\(hoursRemaining):\(minutesRemaining):\(secondsRemaining)"
        
        beerLevel += (((1100 - 100) / Double(waitingSeconds)))
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
            
                .offset(y: beerLevel)
                // 260 of 130
                // als t bierglas leeg is, is y = 1055
                // laten we zeggen tussen y = 100 en y = 1000
            
                // met iedere seconde verplaatst de offset met (1100 - 100) / waitingSeconds
                // dus dan wordt de offset = 100 + (1100 - 100) / waitingSeconds; nog - 2 doen ivm vertraging?
//                .animation(.default)
            
                .animation(.default, value: beerLevel)

            
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
                let dateDiff = futureDate.timeIntervalSinceReferenceDate - Date().timeIntervalSinceReferenceDate

                if dateDiff > 0 {
                    self.update()
                } else {
                    self.timer.upstream.connect().cancel()

                }
            }
 
            
        }
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
