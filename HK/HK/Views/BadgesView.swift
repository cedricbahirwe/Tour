//
//  BadgesView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct BadgesView: View {
    
    @State private  var data = ["cedric", "John", "ali", "Isak", "Johson", "alezander", "wuiin"]
    
    @State var row = 4
    @State var column = 2
    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
            ProfileView(isLoggedIn: .constant(true))
            Spacer()
            
            List {
                GridStack(rows: 4, columns: 2) { row, column in
                    if self.indexFor(row, column) < self.data.count-1 {
                        VStack {
                            Image("badge")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: 200)
                                .onTapGesture {
                                    print(row, column)
                            }
                            
                            Text(self.data[self.indexFor(row, column)])
                        }
                    } else {
                        Spacer()
                    }
                }
            }
        }
    }
    public func indexFor(_ row: Int, _ column: Int) -> Int {
        let index =  row * 2 + column;
        return index
    }
}

struct BadgesView_Previews: PreviewProvider {
    static var previews: some View {
        BadgesView()
    }
}
