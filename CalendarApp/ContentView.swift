//
//  ContentView.swift
//  Calendar App
//
//  Created by Anders Bergman on 2022-10-17.
//

import SwiftUI

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height

                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}
struct ContentView: View {
    
    var courseone = ""
    var coursetwo = ""
    var coursethree = ""
    var coursefour = ""
    var numone = ""
    var numtwo = ""
    var numthree = ""
    var numfour = ""
    
    //
    
    var body: some View {
        
        
        VStack(spacing: 20){
            
            ZStack(alignment: .top) {
                Rectangle()
                    .ignoresSafeArea()
                    .background(RoundedCorners(color: .blue, tl: 0, tr: 0, bl: 30, br: 30))
                    
                
                Rectangle()
                    .ignoresSafeArea()
                    .frame(height: 300)
                    .cornerRadius(30)
                    .foregroundColor(.blue)
                    .opacity(0.8)
                
                
                
            }
            
            
           
            VStack(alignment: .leading, spacing: 4) {
                
                Text("9:12-10:22")
                    .foregroundColor(.white)
                    .opacity(0.8)
                Text("English")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    
                
            }
            
            .padding(10)
            .frame(width: 325, height: 75, alignment: .leading)
            .offset(x: 70)
            .background(.teal)
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .overlay(Circle()
                .padding(8)
                .foregroundColor(.orange)
                     , alignment: .leading)
            .overlay(Text("1")
                .font(.largeTitle)
                .foregroundColor(.white)
                .offset(x: 29)
                     , alignment: .leading)
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text("10:26-11:36")
                    .foregroundColor(.white)
                    .opacity(0.8)
                Text("Physics")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
            }
            
            .padding(10)
            .frame(width: 325, height: 75, alignment: .leading)
            .offset(x: 70)
            .background(.teal)
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .overlay(Circle()
                .padding(8)
                .foregroundColor(.orange)
                     , alignment: .leading)
            .overlay(Text("2")
                .font(.largeTitle)
                .foregroundColor(.white)
                .offset(x: 29)
                     , alignment: .leading)
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text("11:50-12:50")
                    .foregroundColor(.white)
                    .opacity(0.8)
                Text("Bio")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
            }
            
            .padding(10)
            .frame(width: 325, height: 75, alignment: .leading)
            .offset(x: 70)
            .background(.teal)
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .overlay(Circle()
                .padding(8)
                .foregroundColor(.orange)
                     , alignment: .leading)
            .overlay(Text("3")
                .font(.largeTitle)
                .foregroundColor(.white)
                .offset(x: 29)
                     , alignment: .leading)
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text("1:50-3:00")
                    .foregroundColor(.white)
                    .opacity(0.8)
                Text("Law")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
            }
            
            .padding(10)
            .frame(width: 325, height: 75, alignment: .leading)
            .offset(x: 70)
            .background(.teal)
            .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .overlay(Circle()
                .padding(8)
                .foregroundColor(.orange)
                     , alignment: .leading)
            .overlay(Text("4")
                .font(.largeTitle)
                .foregroundColor(.white)
                .offset(x: 29)
                     , alignment: .leading)
            
            
            
        }
        
                
                
        
}
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
