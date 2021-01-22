//
//  ContentView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeView()
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
