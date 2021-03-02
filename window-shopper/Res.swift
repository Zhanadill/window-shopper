//
//  Res.swift
//  window-shopper
//
//  Created by Жанадил on 11/15/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import Foundation

class Res{
     class func getHours(forWage wage: Double, forItem item: Double)->Int{
         return Int(ceil(item/wage))
    }
}
