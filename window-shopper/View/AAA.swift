//
//  AAA.swift
//  window-shopper
//
//  Created by Жанадил on 11/14/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import UIKit

class AAA: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
         backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2471390845)
         layer.cornerRadius = 5
         textAlignment = .center
         
         if let p = placeholder {
             let place = NSAttributedString(string: p, attributes:
                 [.foregroundColor: UIColor.white ])
             attributedPlaceholder = place
             textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
             
         }
        
    }

}
