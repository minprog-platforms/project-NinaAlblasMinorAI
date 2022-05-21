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
    
    var taxiNumber = "085 130 1675"
    @State private var showingAlert = false
        
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    @State var timeRemaining = ""
    var futureDate: Date = Date()
    @State var timesUp: Bool = false
    
    var waitingMinutes: Int = 0
    var waitingSeconds: Int = 0
        
    @State var beerLevel: CGFloat = 260
    
    @State var showTimer: Bool = true
    
    init(user: Binding<CurrentUser>) {
        self._user = user
        // _user bevat daadwerkleijke binding, @binding maakt automatisch een binding object die hoort bij user variabele
        
        waitingMinutes = self.user.waitingTime
        waitingSeconds = waitingMinutes * 60
    

        futureDate = Calendar.current.date(byAdding: .minute, value: waitingMinutes, to: Date())!
        // force unwrappen zodat ie crasht
        // TODO: beter: if let -->handelen als het misgaat, ik weet niet hoe
        
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"),
                                                       Color("Nina-sky")]),
                           startPoint: .leading,
                           endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            Image("tipsytimerlogo")
                .offset(x: getOffsetX(-20))
            
            switch timesUp {
            case true:
                GifImage("driving_jb")
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: getFrameWidth(1700), height: getFrameHeight(1100))
                    .offset(y: getOffsetY(-100))
                    
            case false:
                Image("beer-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: getFrameWidth(700), height: getFrameHeight(1300))
                    .offset(y: getOffsetY(beerLevel))
                    .animation(.default, value: beerLevel)
            }

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
                        .shadow(color: Color("Nina-lightpink"), radius: 3)
                        .opacity(0.6)
                    Text(timesUp ? "JE KUNT WEER VEILIG DE WEG OP!" : showTimer ? "WACHT NOG\n\(timeRemaining)\nNA JE LAATSTE SLOK" : "ZODRA DIT\nBIERTJE OP IS,\nMAG JE WEER RIJDEN!")
                        .font(.system(size: (showTimer ? 30 : 27), weight: .heavy))
                        .foregroundColor(Color("Nina-dark"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(width: getFrameWidth(350), height: getFrameHeight(150))
                
                
                Spacer()
                NavigationLink(destination: HomeScreenView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)) {
                        Label("OPNIEUW", systemImage: "arrow.triangle.2.circlepath")
                            .foregroundColor(Color(.white))
                            .font(.system(size: 25, weight: .heavy))
                            .shadow(color: Color("Nina-dark"), radius: 5)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        self.timer.upstream.connect().cancel()
                    })
            }
            .frame(width: getFrameWidth(400), height: getFrameHeight(850))

            .onAppear(perform: {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { _, _ in
                }
                // TODO: 3 uur arbitrair?
                if waitingMinutes > (60 * 3) {
                    showingAlert = true
                }
            })
                        
            .onReceive(timer) { _ in
                let dateDiff = futureDate.timeIntervalSinceReferenceDate - Date().timeIntervalSinceReferenceDate

                if dateDiff > 1 {
                    self.updateTimeRemaining()
                    
                    // switch between timer and beer info every 10 seconds
                    if Int(dateDiff) % 10 == 0 {
                        showTimer.toggle()
                    }
                    
                } else {
                    timesUp = true
                    self.Notify()
                    self.timer.upstream.connect().cancel()
                    

                }
            }
            
            .alert("Bel een taxi", isPresented: $showingAlert) {
                Button(action: {
                    let phone = "tel://"
                    let phoneNumberformatted = phone + taxiNumber
                    guard let url = URL(string: phoneNumberformatted) else { return }
                    UIApplication.shared.open(url)
                }, label: {
                    Text(taxiNumber)
                })
                Button("Nee, ik rijd met de BOB mee", role: .cancel) { }
            }
            
            
            
            
            
        }
        
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
