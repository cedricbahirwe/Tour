//
//  VirusAlertView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/30/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct VirusAlertView: View {
    var body: some View {
        ZStack {
            Spacer()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(Color.white.opacity(0.75).edgesIgnoringSafeArea(.all) )
                .animation(.interpolatingSpring(stiffness: 300.0, damping: 30.0, initialVelocity: 10.0))
            VStack {
                VStack(spacing: 10) {
                    Image("virus")
                    Text("Virus Alert!")
                        .bold()
                        .foregroundColor(Color(.brandPrimary))
                }
                VStack {
                    Text("You have been at the same location as")
                    Text("someone who tested positive!")
                }
                .font(.system(size: 18, weight: .regular))
                
                VStack {
                    Text("For official information on the pandemic in")
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    Text("Rwanda visit ")
                        + Text("MOH Website.").underline()
                }
                .padding(.vertical, 10)
                
                VStack(spacing: 5) {
                    Color.gray.frame(height: 0.5)
                    Button(action: {}) {
                        Text("Call 114 For Testing")
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
                    }.padding(.bottom, 5)
                }
            }
            .padding(.top)
            .background(Color(.systemBackground))
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding()
        }
        
    }
}

struct VirusAlertView_Previews: PreviewProvider {
    static var previews: some View {
        VirusAlertView()
    }
}
