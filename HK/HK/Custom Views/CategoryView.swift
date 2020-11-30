//
//  CategoryView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import SwiftUI

struct CategoryView: View {
    let title: String
    let image: UIImage
    
    var body: some View {
        NavigationLink(destination: SiteView()) {
            VStack(spacing: 3) {
                Image(uiImage: image)
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 70, height: 70)
                Text(title)
                    .font(.callout)
                    .foregroundColor(Color(.label))
            }
        }
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(title: "back", image: #imageLiteral(resourceName: "sun-large"))
    }
}
