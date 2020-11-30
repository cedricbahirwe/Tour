//
//  RatingView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/30/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct RatingView: View {
    @State private var isShown = true
    var body: some View {
        ZStack {
            Spacer()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(isShown ? Color.white.opacity(0.75).edgesIgnoringSafeArea(.all) : Color.clear.edgesIgnoringSafeArea(.all))
                .animation(.interpolatingSpring(stiffness: 300.0, damping: 30.0, initialVelocity: 10.0))
                .gesture(
                    TapGesture()
                        .onEnded { _ in
                            self.isShown = false
                    }
            )
            
            VStack {
                HStack {
                    Text("Ikawa Cafe")
                        .bold()
                        .font(.body)
                    Spacer()
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.gray)
                        .rotationEffect(.degrees(45))
                }
                
                Text("Are these items/services the ")
                Text("'Best fo Kigali' ?")
                
                HStack {
                    ForEach(0..<3) { index in
                        HStack(spacing: 5) {
                            Image("bestof")
                                .resizable()
                                .frame(width: 18, height: 18)
                            Text("Coffee\(index)")
                                .font(.system(size: 12, weight: .light))
                        }
                        .padding(.horizontal, 5)
                        .padding(.vertical, 5)
                        .foregroundColor(Color(.systemBackground))
                        .background(Color(.label))
                        .clipShape(Capsule())
                    }
                }
                
                Text("Suggest an item/Service:")
                    .frame(maxWidth : .infinity, alignment: .leading)
                TextField("Omelette", text: .constant(""))
                    .font(.system(.body))
                    .overlay(Color.gray.frame(height: 0.3), alignment: .bottom)
                HStack {
                    Spacer()
                    RedButton("Finished") { }
                }
            }
            .padding()
            .background(Color(.systemBackground))
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding()
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
//         .environment(\.colorScheme, .dark)
    }
}
