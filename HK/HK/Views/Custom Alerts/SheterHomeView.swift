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
                Text("Rwanda visit MOH Website.")
            }
            .padding(.vertical)
            
            VStack(spacing: 0) {
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
            }
            
            
        }
        .padding(.top)
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding()
        
    }
}

struct SheterHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SheterHomeView()
        //            .environment(\.colorScheme, .dark)
    }
}
