//
//  MapsView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct MapsView: View {
    @State private var getUserLocation = false
    var body: some View {
        ZStack {
            
            MapView(setLocation: $getUserLocation)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Capsule()
                    .fill(Color.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .shadow(color: Color(.darkGray), radius: 4, x: 0, y: 4)
                    .overlay(
                        HStack {
                            NavigationLink(
                                destination: SiteListView()) {
                                Image("searchbutton")
                                    .renderingMode(.original)
                            }
                            
                            TextField("What ya looking for?", text: .constant(""))
                                .font(.system(size: 16, weight: .bold))
                                .padding(.vertical, 6)
                            
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                                .padding(8)
                                .foregroundColor(.gray)
                            
                        }.padding(.horizontal, 10)
                )
                
                Spacer()
                Button(action: {
                    self.getUserLocation.toggle()
                }) {
                    Circle()
                        .fill(Color.clear)
                        .overlay(
                            PulseView($getUserLocation)
                                .scaleEffect(0.6)
                        )
                        .frame(width: 50, height: 50)

                }
            }.padding()
        }
        
    }
}

struct MapsView_Previews: PreviewProvider {
    static var previews: some View {
        MapsView()
    }
}
