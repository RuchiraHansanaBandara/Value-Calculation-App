//
//  ViewController.swift
//  myFirstIOSdemoApp
//
//  Created by Ruchira Bandara on 2022-04-20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PriceTxt: UITextField!
    @IBOutlet weak var SalesTaxTxt: UITextField!
    @IBOutlet weak var TotalPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TotalPriceLbl.text = ""
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(PriceTxt.text!)!
        let salesTax = Double(SalesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        
        TotalPriceLbl.text = "$\(totalPrice)"
    }
    

}

