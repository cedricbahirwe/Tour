//
//  Category.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import UIKit

// Names of the images used for the category icons
enum CategoryIcon: String {
    case backgroundCircle, restaurant, coffee, bar, NightLife, bestof, fav, shopping, medical, wifi, NineTwelve, Gorilla, rwanda,building, hotel, virus, badges
}

enum CategoryIconWhite: String{
    case restaurantWhite, coffeeWhite, barWhite, shoppingWhite, bestofWhite, wifiWhite, medicalWhite, EventsBashWhite, favoriteWhite, rwandaWhite, hotelWhite, buildingWhite
}

extension UIImage {
    convenience init!(categoryIcon: CategoryIcon) {
        self.init(named: categoryIcon.rawValue)
    }
    
    convenience init!(categoryIconWhite: CategoryIconWhite){
        self.init(named: categoryIconWhite.rawValue)
    }
}
