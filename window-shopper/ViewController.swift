//
//  ViewController.swift
//  window-shopper
//
//  Created by Жанадил on 11/14/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var wageTxt: CurrenctyTxtField!
    @IBOutlet weak var itemTxt: CurrenctyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = UIColor.orange
        calcBtn.setTitle("Calculates", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        itemTxt.inputAccessoryView = calcBtn
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    @objc func calculate(){
        if let wageTxt=wageTxt.text, let itemTxt=itemTxt.text{
            if let wage=Double(wageTxt), let item=Double(itemTxt){
                resultLabel.text = "\(Res.getHours(forWage: wage, forItem: item))"
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
            }
        }
    }

    @IBAction func clearCalculation(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text=""
        itemTxt.text=""
    }
}

