//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//

import SwiftUI
import UserNotifications

struct ResultView: View {
    @Binding var user: CurrentUser
    @Environment(\.presentationMode) var presentationMode
        
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    @State var timeRemaining = ""
    var futureDate: Date = Date()
    @State var timesUp: Bool = false
    
    var waitingMinutes: Int = 0
    var waitingSeconds: Int = 0
        
    @State var beerLevel: CGFloat = 260
    
    
    init(user: Binding<CurrentUser>) {
        self._user = user
        // _user bevat daadwerkleijke binding, @binding maakt automatisch een binding object die hoort bij user variabele
        
        waitingMinutes = self.user.waitingTime
        waitingSeconds = waitingMinutes * 60

        futureDate = Calendar.current.date(byAdding: .minute, value: waitingMinutes, to: Date())!
        // force unwrappen zodat ie crasht
        // TODO: beter: if let -->handelen als het misgaat
        
    }
    
    func updateTimeRemaining() {
        let timerFormatter = DateComponentsFormatter()
        timerFormatter.allowedUnits = [.hour, .minute, .second]
        timerFormatter.unitsStyle = .positional
        timerFormatter.zeroFormattingBehavior = .pad
        timeRemaining = timerFormatter.string(from: Date(), to: futureDate) ?? ""
        
        // TODO: dit bereken ik nu steeds opnieuw, maar als ik het in de init initialiseer, deelt ie door 0 (waiting seconds)
        let highestLevel = 1100
        let lowestLevel = 260
        beerLevel += Double(((highestLevel - lowestLevel) / waitingSeconds))
    }
    
    var body: some View {
        ZStack {
            switch timesUp {
            case true:
                Color("Nina-hotpink")
                    .edgesIgnoringSafeArea(.all)
            case false:
                LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"),
                                                           Color("Nina-sky")]),
                               startPoint: .leading,
                               endPoint: .trailing)
                    .edgesIgnoringSafeArea(.all)
                Image("tipsytimerlogo")
                    .offset(x: -20)
            }

            Image("beer-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 700, height: 1300)
                .offset(y: beerLevel)
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
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("Tipsy-white"))
                        .shadow(color: Color("Nina-dark"), radius: 3)
                        .opacity(0.6)
                    Text(timesUp ? "JE KUNT WEER VEILIG DE WEG OP!" : "WACHT NOG\n\(timeRemaining)")
                        .font(.system(size: 35, weight: .black))
                        .foregroundColor(Color("Nina-dark"))
                        .multilineTextAlignment(.center)
                }
                .frame(width: 350, height: 150)
                
                
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
            .onAppear(perform: {
                // TODO: _ veranderen in success en error (zie hacking with swift video)
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { _, _ in
                }
            })
            
            .onReceive(timer) { _ in
                let dateDiff = futureDate.timeIntervalSinceReferenceDate - Date().timeIntervalSinceReferenceDate

                if dateDiff > 1 {
                    self.updateTimeRemaining()
                } else {
                    self.Notify()
                    self.timer.upstream.connect().cancel()
                    timesUp = true

                }
            }
        }
        
    }
    
    func Notify() {
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "De tijd zit erop!"
        notificationContent.body = "Je kunt weer veilig de weg op"
        notificationContent.sound = UNNotificationSound.default
        
        let notificationTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: "MSG", content: notificationContent, trigger: notificationTrigger)
        
        UNUserNotificationCenter.current().add(request)
    }
}
//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView()
//    }
//}
