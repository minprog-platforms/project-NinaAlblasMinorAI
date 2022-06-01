//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//

import SwiftUI
import UserNotifications

struct ResultView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var user: CurrentUser
    
    // timer related variables (Swiftful Thinking, 2021)
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    var futureDate: Date = Date()
    @State private var timeRemaining = ""
    
    // waiting time related variables
    var waitingMinutes: Int = 0
    var waitingSeconds: Int = 0
    
    // lowering beer level related variables
    @State private var beerLevel: CGFloat = 260
    let highestBeerLevel = 1100
    let lowestBeerLevel = 260
    var beerLevelChange: Double = 0
    
    @State private var showingAlert = false
    @State private var showTimer: Bool = true
    @State private var timesUp: Bool = false
    
    init(user: Binding<CurrentUser>) {
        self._user = user
        
        waitingMinutes = self.user.waitingTime
        waitingSeconds = waitingMinutes * 60
        
        // determining date in the future at which timer should go off (Swiftful Thinking, 2021)
        futureDate = Calendar.current.date(byAdding: .minute, value: waitingMinutes, to: Date())!
        
        // don't compute the beer level delta when person doesn't have to wait; prevents fatal error
        if waitingSeconds > 0 {
            beerLevelChange = Double(((highestBeerLevel - lowestBeerLevel) / waitingSeconds))
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"),
                                                       Color("Nina-sky")]),
                           startPoint: .leading,
                           endPoint: .trailing)
            .edgesIgnoringSafeArea(.all)
            
            Image("tipsytimerlogo")
                .offset(x: convertWidth(-20))
            
            switch timesUp {
            case true:
                GifImage("DrivingJamesBond")
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: convertWidth(1700), height: convertHeight(1100))
                    .offset(y: convertHeight(-100))
                
            case false:
                Image("beer-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: convertWidth(700), height: convertHeight(1300))
                    .offset(y: convertHeight(beerLevel))
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
                .frame(width: convertWidth(350), height: convertHeight(150))
                
                Spacer()
                
                NavigationLink(destination: HomeScreenView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)) {
                        Label("OPNIEUW", systemImage: "arrow.triangle.2.circlepath")
                            .foregroundColor(Color(.white))
                            .font(.system(size: 25, weight: .heavy))
                            .shadow(color: Color("Nina-dark"), radius: 5)
                    }
                    .simultaneousGesture(
                        TapGesture().onEnded {
                            self.timer.upstream.connect().cancel()
                        }
                    )
            }
            .frame(width: convertWidth(400), height: convertHeight(850))
            
            // enable user notifications (Hudson, 2022)
            .onAppear() {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { _, _ in
                }
                
                if waitingMinutes > (60 * 2) {
                    showingAlert = true
                }
            }
            
            // enable timer updating (Swiftful Thinking, 2021)
            .onReceive(timer) { _ in
                let dateDiff = futureDate.timeIntervalSinceReferenceDate - Date().timeIntervalSinceReferenceDate
                
                if dateDiff > 1 {
                    self.updateTimeRemaining()
                    
                    // switch between timer and informational text every 10 seconds
                    if Int(dateDiff) % 10 == 0 {
                        showTimer.toggle()
                    }
                    
                } else {
                    timesUp = true
                    
                    self.notify()
                    
                    self.timer.upstream.connect().cancel()
                }
            }
            
            // enable "call taxi" pop up
            .actionSheet(isPresented: $showingAlert) {
                callTaxi()
            }
        }
    }
    
    /*
     Computes the amount of time remaining until target BAC is reached, stores the result in timer format, and updates the lowered beer level.
     
     Swiftful Thinking. (2021, April 27). How to use Timer and onReceive in SwiftUI | Continued Learning #24 [Video]. YouTube. https://www.youtube.com/watch?v=ymXRX6ZB-J0&list=WL&index=7&t=872s
     */
    func updateTimeRemaining() {
        let timerFormatter = DateComponentsFormatter()
        timerFormatter.allowedUnits = [.hour, .minute, .second]
        timerFormatter.unitsStyle = .positional
        timerFormatter.zeroFormattingBehavior = .pad
        
        timeRemaining = timerFormatter.string(from: Date(), to: futureDate) ?? ""
        
        // lower beer level
        beerLevel += beerLevelChange
    }
    
    /*
     Enable user notifications.
     
     Hudson, P. (2022, January 2). Scheduling local notifications – Hot Prospects SwiftUI Tutorial 8/18 [Video]. YouTube. https://www.youtube.com/watch?v=XnnDHDlPwLw&t=296s
     */
    func notify() {
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "De tijd zit erop!"
        notificationContent.body = "Je kunt weer veilig de weg op"
        notificationContent.sound = UNNotificationSound.default
        
        let notificationTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: "MSG", content: notificationContent, trigger: notificationTrigger)
        
        UNUserNotificationCenter.current().add(request)
    }
    
    /*
     Enables "call a taxi" pop up that can actually call a taxi.
     
     Prezioso, T. (2021, January 3). How to Make a Phone Call using SwiftUI. Swift Tom. Retrieved June 1, 2022, from https://swifttom.com/2021/01/03/how-to-make-a-phone-call-using-swiftui/
     
     Hudson, P. (2021, September 3). How to show an action sheet. Hacking with Swift. Retrieved June 1, 2022, from https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-an-action-sheet
     */
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
}
