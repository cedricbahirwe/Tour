//
//  ProfileView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        VStack {
            HStack {
                if isLoggedIn {
                    Image("KigaliCityPhoto-2018")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text("Cédric Bahirwe")
                        Text("@cedricbahirwe")
                            .font(.system(size: 15, weight: .light))
                    }
                    Spacer()
                } else {
                    VStack {
                        Text("Hello Kigali is part of the Mururgo Cloud")
                        Text("Login or create a new account")
                    }
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.gray)
                }
                Image("settingscog")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Rectangle().fill(Color.gray).frame(height: 0.5)
        }
        .padding(.horizontal, 8)
        
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isLoggedIn: .constant(true))
    }
}
