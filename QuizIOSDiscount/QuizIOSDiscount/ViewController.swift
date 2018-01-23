//
//  ViewController.swift
//  QuizIOSDiscount
//
//  Created by Sam Pramudana on 1/23/18.
//  Copyright © 2018 Sam Pramudana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDiscount: UILabel!
    @IBOutlet weak var etPrice: UITextField!
    @IBOutlet weak var etSum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnCount(_ sender: Any) {
        
        let sum : Int? = Int(etSum.text!)!
        let price : Int? = Int(etPrice.text!)!
        let bayar : Int = sum! * price!
        let diskon : Int = bayar / 2
        
        if (sum! > 10){
            txtDiscount.text = "Your payment before discount is Rp.\(bayar), but you got discount 50% so you have to pay Rp.\(diskon)"
        }else if (sum! < 10){
            txtDiscount.text = "You didn't get discount, so... you must pay Rp.\(bayar)"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

