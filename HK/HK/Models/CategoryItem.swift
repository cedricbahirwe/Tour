//
//  CategoryItem.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import UIKit


class CategoryItem: Identifiable {
    
    var id = UUID()
    var name = String()
    var image = UIImage()
    var category: CategoryIcon
    
    init(name:String, image:CategoryIcon) {
        self.name = name
        self.category = image
        self.image = UIImage(categoryIcon: image) ?? UIImage(categoryIcon: .backgroundCircle)!
    }
}


extension CategoryItem {
    
    class func getCategories() -> Array<CategoryItem>{
        return [
            CategoryItem(name: "Food", image: .restaurant),
            CategoryItem(name: "Coffee", image: .coffee),
            CategoryItem(name: "Bar", image: .bar),
            CategoryItem(name: "Night Life", image: .NightLife),
            CategoryItem(name: "Best Of", image: .bestof),
            CategoryItem(name: "Favorites", image: .fav),
            CategoryItem(name: "Shopping", image: .shopping),
            CategoryItem(name: "Medical", image: .medical),
            CategoryItem(name: "WiFi", image: .wifi),
            CategoryItem(name: "Hotel", image: .hotel),
            CategoryItem(name: "Tourism", image: .Gorilla),
            CategoryItem(name: "Rwanda", image: .rwanda),
            CategoryItem(name: "Buildings", image: .building),
            CategoryItem(name: "Call 912", image: .NineTwelve),
            CategoryItem(name: "LockDown", image: .virus),
            CategoryItem(name: "Badges", image: .badges),
        ]
    }
}
