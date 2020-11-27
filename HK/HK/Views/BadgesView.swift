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
        }
    }
}

struct BadgesView_Previews: PreviewProvider {
    static var previews: some View {
        BadgesView()
    }
}
