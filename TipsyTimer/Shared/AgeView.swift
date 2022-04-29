//
//  AgeView.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 26/04/2022.
//

import SwiftUI


struct AgeView: View {
    @State var progress: CGFloat = 0
    @State var angle: Double = 0
    @State var age: Int = 0
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Nina-dark"), Color("Nina-sky")]), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("HOE OUD BEN JE?")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color("Tipsy-white"))
                    .shadow(color: Color("Nina-dark"), radius: 5)
                Spacer()
                ZStack {
                    Circle()
                        .stroke(Color("Nina-sky"), style: StrokeStyle(lineWidth: 45, lineCap: .round, lineJoin: .round))
                        .frame(width: 300.0, height: 300.0)
                        .rotationEffect(.init(degrees: -90))
                        .shadow(color: Color("Nina-dark"), radius: 1)
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(Color("Nina-pinkpurple"), style: StrokeStyle(lineWidth: 45, lineCap: .round, lineJoin: .round))
                        .frame(width: 300.0, height: 300.0)
                        .rotationEffect(.init(degrees: -90))
                        .shadow(color: Color("Nina-dark"), radius: 5)
                    Circle()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color("Tipsy-white"))
                        .offset(x: 150)
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
    }
    func ageOnDrag(value: DragGesture.Value) {
        
        // calculating radians...
        let vector = CGVector(dx: value.location.x, dy: value.location.y)
        
        // since atan2 will give from -180 to 180...
        // eliminating drag gesture size
        // size = 55 => Radius = 27.5...
        let radians = atan2(vector.dy - 27.5, vector.dx - 27.5)
        
        // converting to angle...
        var angle = radians * 180 / .pi
        
        // simple technique for 0 to 360...
        
        // eg = 360 - 176 = 184...
        if angle < 0 {
            angle = 360 + angle
        }
        
        withAnimation(Animation.linear(duration: 0.15)) {
            // progress is fractie van het totaal: je kunt tussen de 18 en de (18 + 83 =) 101 zijn
            let progress = angle / 360
            self.progress = progress
            self.angle = Double(angle)
            self.age = Int(progress * 83 + 18)
            
        }
    }
}

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
