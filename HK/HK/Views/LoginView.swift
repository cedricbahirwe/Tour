//
//  LoginView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

public let size = UIScreen.main.bounds.size

struct LoginView: View {
    
    var body: some View {
        ZStack {
            
            VStack {
                Image("sun-large")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .padding()
            }
            .frame(width: size.width, height: size.height, alignment: .topTrailing)
            
            
            VStack  {
                Image("BackgroundMurugo")
                    .resizable()
            }
            .frame(height: size.height+200)
            .offset(y: 80)
            //            .edgesIgnoringSafeArea(.bottom)
            
            VStack {
                Image("murugo-title")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(6)
                    .frame(width: 250, height: 40)
                    .padding(.top, 60)
                Spacer()
            }
            .frame(width: size.width, height: size.height,alignment: .leading)
            
            VStack {
                Image("back")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                    .padding(.top, 30)
                    .padding(.leading)
                Spacer()
            }
            .frame(width: size.width, height: size.height,alignment: .topLeading)
            
            
            VStack(spacing: 10) {
                VStack(spacing: 0) {
                    Image("hello-kigali-splash")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 80)
                    Text("Hello Kigali is part of murugo cloud")
                        .font(.callout)
                        .foregroundColor(.gray)
                }.padding(.top)
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Email or Phone number")
                            .bold()
                        
                        VStack(spacing: 0) {
                            TextField("Email", text: .constant("junkmail.@commmonworldinc.com"))
                                .padding(.vertical, 8)
                            Rectangle().fill(Color.gray).frame(height: 0.5)
                            
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Password")
                            .bold()
                        VStack(spacing: 0) {
                            HStack {
                                SecureField("********", text: .constant(""))
                                    .padding(.vertical, 8)
                                Image(systemName: "eye.fill")
                                    .foregroundColor(Color(.brandBlue))
                            }
                            Rectangle().fill(Color.gray).frame(height: 0.5)
                            
                        }
                    }
                    
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .bold()
                                .foregroundColor(.gray)
                        })
                    }
                    
                    VStack(spacing: 22) {
                        Button(action: {}) {
                            Text("LOGIN")
                                .bold()
                                .foregroundColor(.white)
                                .padding(.vertical, 15)
                                .frame(maxWidth: .infinity)
                                .background(Color(.brandBlue))
                                .cornerRadius(10)
                        }
                        
                        Button(action: {}, label: {
                            Text("Create an account")
                                .bold()
                                .foregroundColor(Color(.brandBlue))
                        })
                    }
                }.padding()
            }
            
        }
        .background(Color(.brandBlue).edgesIgnoringSafeArea(.all))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
