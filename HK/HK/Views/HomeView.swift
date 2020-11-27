//
//  HomeView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var row = 4
    @State var column = 4
    
    @State private var categories = CategoryItem.getCategories()
    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
            
            ProfileView(isLoggedIn: .constant(true))
            GridStack(rows: 4, columns: 4) { (row, column) in
                CategoryView(title: self.categories[self.index(at: row, and: column)].name, image: self.categories[self.index(at: row, and: column)].image)
            }
            
            Spacer()
            
        }
    }
    
    public func index(at row: Int, and column: Int) -> Int {
        return (((self.column * (row + 1)) + column + 1) - self.row)-1
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HeaderView: View {
    var body: some View {
        Image("KigaliCityPhoto-2018")
            .frame(width: size.width, height: size.height*0.25)
            .edgesIgnoringSafeArea(.top)
            .shadow(color: Color(.darkGray), radius: 4, x: 0, y: 3)
            .overlay(
                Image("hello-kigali-splash")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 80)
                    .padding(.leading)
                , alignment: .topLeading
        )
    }
}
