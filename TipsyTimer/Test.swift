import SwiftUI

//
//  ResultView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 30/04/2022.
//

import SwiftUI
import UserNotifications

struct TestView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack {
            
            
            GifImage("driving_hangover")
                .edgesIgnoringSafeArea(.all)
            
            
            
            
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
                    Text("JE KUNT WEER VEILIG DE WEG OP!")
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
            
            
            
        }
        
    }
    
    
}



struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
