//
//  SiteListView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/30/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct SiteListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sites")
                .font(.system(size: 50, weight: .bold))
                .padding(.leading)
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Ikawa cafe ")
                            .bold()
                            .font(.body)
                        HStack {
                            Text("3.9")
                            ForEach(0..<5) { item in
                                Image(systemName: item <= 3 ? "star.fill" : "star")
                                    .imageScale(.small)
                            }
                            Spacer()
                        }
                        .foregroundColor(.orange)
                        
                        VStack(alignment: .leading, spacing: 3) {
                            Text("You voted 'Best Of Kigali':")
                                .fontWeight(.semibold)
                            Text("Coffee, Remote work")
                                .font(.system(size: 14, weight: .light))
                                .italic()
                        }
                        
                        VStack(alignment: .leading, spacing: 3) {
                            Text("Rated 'Best of Kigali' for:")
                                .fontWeight(.semibold)
                            ForEach(0..<2) { index in
                                HStack(spacing: 5) {
                                    Image("bestof")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                    Text("Coffee\(index+1)")
                                        .font(.system(size: 14, weight: .light))
                                        .italic()
                                }
                            }
                            
                        }
                        
                    }.padding(.bottom, 5)
                    VStack {
                        CircleImage(title: "wifiyes", size: .large)
                        CircleImage(title: "bestof", size: .large)
                        CircleImage(title: "menuIcon", size: .large)
    //                    Spacer()
                    }
                }
                //            .overlay(Color.gray.frame(height: 0.5), alignment: .bottom)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

struct SiteListView_Previews: PreviewProvider {
    static var previews: some View {
        SiteListView()
    }
}


struct CircleImage: View {
    let title: String
    var size: ImageSize = .large
    var body: some View {
        Image(title)
            .resizable()
            .frame(width: imageSize().width, height: imageSize().height)
    }
    
    func imageSize() -> CGSize {
        switch size {
        case .small:
            return .init(width: 20, height: 20)
        case .medium:
            return .init(width: 30, height: 30)
        case .large:
            return .init(width: 40, height: 40)
        }
    }
}


enum ImageSize {
    case small, medium , large
}
