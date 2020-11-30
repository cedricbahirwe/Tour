//
//  SheterHomeView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/30/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct SheterHomeView: View {
    var body: some View {
        ZStack {
            Spacer()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(Color.white.opacity(0.75).edgesIgnoringSafeArea(.all) )
                .animation(.interpolatingSpring(stiffness: 300.0, damping: 30.0, initialVelocity: 10.0))
            
            VStack {
                Image("virus")
                VStack {
                    Text("Stay safe sheltering at home.")
                    Text("Collect  a special badges!")
                }
                .font(.system(size: 18, weight: .light))
                
                VStack {
                    Text("For official information on the pandemic in")
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    Text("Rwanda visit ")
                    + Text("MOH Website.").underline()
                }
                .padding(.vertical, 14)
                
                VStack(spacing: 5) {
                    Color.gray.frame(height: 0.5)
                    Button(action: {}) {
                        Text("Check In - Shelting at home!")
                            .bold()
                            .foregroundColor(Color(.brandPrimary))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                    }
                    Color.gray.frame(height: 0.5)
                    Button(action: {}) {
                        Text("Cancel")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                    }
                    .padding(.bottom, 5)
                }
                
                
            }
            .padding(.top)
            .background(Color(.brandGrey))
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding()
        }
        
    }
}

struct SheterHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SheterHomeView()
        //            .environment(\.colorScheme, .dark)
    }
}
