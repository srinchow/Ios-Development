//
//  ViewController.swift
//  Concentration
//
//  Created by srinjoy on 09/12/18.
//  Copyright © 2018 Srinjoy_Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipcount = 0{
        didSet{
            FlipcontLabel.text = "FLIP : \(flipcount)"
        }
    }
    
    var emojiChoices = ["👻","🎃","🏀","👻","🎃","🏀"]
    
    @IBOutlet weak var FlipcontLabel: UILabel!
    
    @IBOutlet var cardButton: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipcount += 1
        if let cardNumber = cardButton.index(of: sender){
            print("cardNumber : \(cardNumber)")
            flipcard(withEmoji: emojiChoices[cardNumber], on: sender)
            
        }
        else{
            print("card not found")
        }
    }
    
   
    
    func flipcard(withEmoji emoji: String, on button: UIButton){
        print("emoji called is : \(emoji)")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            print("debug1")
        }
        else {
                button.setTitle(emoji,for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                print("debug2")
            }
            
        
        
    }
    
    

    

}

