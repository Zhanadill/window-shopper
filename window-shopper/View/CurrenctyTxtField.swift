//
//  CurrenctyTxtField.swift
//  window-shopper
//
//  Created by Жанадил on 11/14/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import UIKit

@IBDesignable
class CurrenctyTxtField: UITextField {
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5,y: (frame.size.height/2)-size/2,width: size,height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7421264052, green: 0.7422525287, blue: 0.7421098351, alpha: 0.8005886884)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.clipsToBounds = true
        currencyLbl.layer.cornerRadius = 5.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
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
