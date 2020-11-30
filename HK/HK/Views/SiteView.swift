//
//  SiteView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct SiteView: View {
    @State var showView = true
    @State private var showCheckinAlert = false
    @State private var isUpdated = false
    
    var body: some View {
        ZStack {
            MapsView()
            ModalView(isShown: $showView, modalHeight: size.height/2.25) {
                VStack(spacing: 0) {
                    if !self.isUpdated {
                        Capsule()
                            .fill(Color.gray)
                            .frame(width: 60, height: 6)
                        
                    }
                    HStack(alignment: .top, spacing: 5) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Ikawa cafe ")
                                .bold()
                                .font(.title)
                            HStack {
                                Text("3.9")
                                ForEach(0..<5) { item in
                                    Image(systemName: item <= 3 ? "star.fill" : "star")
                                }
                                Spacer()
                            }
                            .foregroundColor(.orange)
                            
                            VStack(alignment: .leading, spacing: 3) {
                                Text("Rated 'best of Kigali' for:")
                                    .bold()
                                Text("Coffee")
                                    .italic()
                            }
                            
                            VStack(alignment: .leading, spacing: 3) {
                                Text("Open Hours: 700 am to 8:00 pm")
                                Text("Phone: 0783139199")
                                Text("Website: kigali.impacthub.net")
                            }
                            .font(.system(size: 16, weight: .semibold))
                            Text("A rootop cage with good coffee and a lunch menu. A good place for doing remote work, Some nights the have socail meetups")
                        }
                        
                        VStack(spacing: 10) {
                            RedButton("Check In", action: {
                                self.showCheckinAlert.toggle()
                            })
                                .alert(isPresented: self.$showCheckinAlert) {
                                    Alert(title: Text("Success!"), message: Text("You check in to Ikawa Cafe, Keep checking into sites like this location to earn badges and other rewards."), dismissButton: .default(Text("OK")))
                            }
                            RedButton("Rate") {
                                self.showCheckinAlert.toggle()
                            }
                            
                            RedButton("Feedback") {
                                self.showCheckinAlert.toggle()
                            }
                            CircleImage(title: "wifiyes", size: .large)

                            if !self.isUpdated {
                            VStack(spacing: 1) {
                                CircleImage(title: "menuIcon", size: .large)

                                
                                Text("Menu from")
                                    .minimumScaleFactor(0.5)
                                Text("Guhemba")
                                    .minimumScaleFactor(0.5)
                            }
                            .frame(width: 50)
                            } else {
                                Spacer()
                            }
                        }
                    }.padding(.top)
                }
            }
        }
    }
}

struct SiteView_Previews: PreviewProvider {
    static var previews: some View {
        SiteView()
    }
}

struct RedButton: View {
    let title: String
    let action : (() -> Void)
    init(_ title: String,  action: @escaping (()->Void)) {
        self.title = title
        self.action = action
        //        self.action = action
    }
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(title)
                .foregroundColor(.white)
                .lineLimit(1)
                .minimumScaleFactor(0.8)
                .padding(.horizontal)
                .frame(maxWidth: 95)
                .frame(height: 35)
                .background(Color(.brandPrimary))
                .clipShape(Capsule())
        }
    }
}
