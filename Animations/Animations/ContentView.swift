//
//  ContentView.swift
//  Animations
//
//  Created by Vinay Kumar Thapa on 2023-02-06.
//

import SwiftUI

//struct ContentView: View {
//
//    @State private var scalingAmount = 1.0
//
//    var body: some View {
//        VStack {
//            Button(){
//                scalingAmount += 1
//            }label: {
//                Image(systemName: "globe").font(.largeTitle)
//                    .foregroundColor(.accentColor)
//            }.padding(20)
//            .scaleEffect(scalingAmount)
//            //.animation(.default, value: scalingAmount)
//            //.animation(.interpolatingSpring(stiffness: 50, damping: 1), value: scalingAmount)
////            .animation(
////                .easeInOut(duration: 1)
////                .delay(2),
////                value: scalingAmount)
////            .animation(
////                .easeInOut(duration: 1)
////                .repeatCount(3, autoreverses: true),
////                value: scalingAmount)
//            .animation(
//                .easeInOut(duration: 1)
//                .repeatForever(autoreverses: true),
//                value: scalingAmount)
//
//        }
//
//    }
//}

//struct ContentView: View {
//
//    @State private var scalingAmount = 1.0
//
//    var body: some View {
//        NavigationView{
//            VStack(spacing: 20) {
//                Stepper("Scale Amount: \(scalingAmount.formatted())", value: $scalingAmount.animation(
//                    .easeInOut(duration: 1).repeatCount(3, autoreverses: true)
//                ), in: 1...10)
//                Spacer()
//
//                Button("Tap Me!"){
//                    scalingAmount += 1
//                }.padding(50)
//                    .background(.red)
//                    .foregroundColor(.white)
//                    .clipShape(Circle())
//                    .scaleEffect(scalingAmount)
//
//            }.navigationTitle("Animation Binding")
//        }
//
//    }
//}

struct ContentView: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20) {
              
                Button("Tap Me!"){
                    
                    withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                        animationAmount += 360
                    }
        
                }.padding(50)
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .rotation3DEffect(.degrees(animationAmount), axis: (x:0, y:1, z: 0))
                    
                
            }.navigationTitle("Explicit Animations").navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
