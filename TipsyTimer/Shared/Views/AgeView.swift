//
//  AgeView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI


struct AgeView: View {
    @Binding var user: CurrentUser
    
    @State private var progress: CGFloat = 0
    @State private var angle: Double = 0
    @State private var age: Int = 18
    
    
    var body: some View {
        VStack {
            Spacer()
            Text("HOE OUD BEN JE?")
                .font(.system(size: 30, weight: .heavy))
                .foregroundColor(Color("Tipsy-white"))
                .shadow(color: Color("Nina-dark"), radius: 5)
            
            Spacer()
            
            ZStack {
                Circle()
                    .stroke(Color("Nina-sky"), style: StrokeStyle(lineWidth: convertWidth(45), lineCap: .round, lineJoin: .round))
                    .frame(width: convertWidth(300), height: convertWidth(300))
                    .rotationEffect(.init(degrees: -90))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color("Nina-pinkpurple"), style: StrokeStyle(lineWidth: convertWidth(45), lineCap: .round, lineJoin: .round))
                    .frame(width: convertWidth(300), height: convertWidth(300))
                    .rotationEffect(.init(degrees: -90))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                
                Circle()
                    .frame(width: convertWidth(45), height: convertWidth(45))
                    .foregroundColor(Color("Tipsy-white"))
                    .offset(x: convertWidth(150))
                    .rotationEffect(.init(degrees: angle))
                    .gesture(DragGesture().onChanged(ageOnDrag(value:)))
                    .rotationEffect(.init(degrees: -90))
                    .shadow(color: Color("Nina-dark"), radius: 1)
                
                Text(String(age))
                    .font(.system(size: 60, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
            }
            
            Spacer()
            Spacer()
        }
    }
    
    /*
     Computes and animates the circle slider, and stores age in current user's data struct.
     
     Kavsoft. (2020, September 3). SwiftUI 2.0 Apple Wallet Circular Slider - SwiftUI Circular Slider/Seeker - SwiftUI 2.0 Tutorials [Video]. YouTube. https://www.youtube.com/watch?v=80SHJeeiJ50&list=WL&index=5
     */
    func ageOnDrag(value: DragGesture.Value) {
        let vector = CGVector(dx: value.location.x, dy: value.location.y)
        let size = convertWidth(45)
        let radians = atan2(vector.dy - (size / 2), vector.dx - (size / 2))
        let angle = ((radians * 180 / .pi) >= 0) ? (radians * 180 / .pi) : (360 + (radians * 180 / .pi))
        
        withAnimation(Animation.linear(duration: 0.15)) {
            let progress = angle / 360
            self.progress = progress
            self.angle = Double(angle)
            
            // possible age inputs range from 18 up to and excl. 101 
            self.age = Int(progress * 83 + 18)
            user.age = Double(self.age)
        }
    }
}
