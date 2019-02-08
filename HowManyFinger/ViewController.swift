//
//  ViewController.swift
//  HowManyFinger
//
//  Created by IMCS2 on 2/7/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfFingers: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var ansLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func submitclicked(_ sender: Any) {
        
        let randomNumber = Int.random(in: 1...10)
        let _userSelectedNumber =  Int(numberOfFingers.text!)
        if _userSelectedNumber == randomNumber{
            imageView.image = UIImage(named: "winer")
        }else{
            imageView.image = UIImage(named: "looser")
        }
        
        ansLable.text = "Phone Guessed \(randomNumber)"
    
        print("submit Buton clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        submitButton.layer.cornerRadius = 10
        submitButton.clipsToBounds = true
        
        
        
    }


}

