//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Kristaps Grinbergs on 19/01/2020.
//  Copyright © 2020 fassko. All rights reserved.
//

import UIKit

// In this file app has all the brains
class ViewController: UIViewController {
  
  // IDR currency value text field
  @IBOutlet weak var idrTextField: UITextField!
  
  // EUR currency value text field
  @IBOutlet weak var eurTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    idrTextField.becomeFirstResponder()
  }
  
  @IBAction func convertFromIDRtoEUR(_ sender: Any) {
    if let idrValue = Float(idrTextField.text!) {
      let eurValue = convertFromEURtoIDR(value: idrValue)
      let formattedEurValue = formatNumber(value: eurValue)
      eurTextField.text = formattedEurValue
    }
  }
  
  
  @IBAction func valueIDRChanged(_ sender: Any) {
    if let fromValue = Float(idrTextField.text!) {
      let eur = convertFromIDRtoEUR(value: fromValue)
      let formattedValue = formatNumber(value: eur)
      eurTextField.text = formattedValue
    }
  }
  
  // Extra
  @IBAction func valueEURChanged(_ sender: Any) {
    if let toValue = Float(eurTextField.text!) {
      let idr = convertFromEURtoIDR(value: toValue)
      let formattedValue = formatNumber(value: idr)
      idrTextField.text = formattedValue
    }
  }
  
  // This function converts value from IDR to EUR
  // Float is floating decimal number - 55.30444
  func convertFromIDRtoEUR(value: Float) -> Float {
    value * 0.000066
  }
  
  func convertFromEURtoIDR(value: Float) -> Float {
    value * 15136.72
  }
  
  // we want to format something like 3445.8305 to 3445.83
  // if can't format correctly then it will return nil
  // nil stands for nothing
  func formatNumber(value: Float) -> String? {
    
    // creating a number formatter
    let formatter = NumberFormatter()
    
    // using US localization
    formatter.locale = Locale(identifier: "en_US")
    
    // 1.00
    // min and max digits after comma
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 2
    
    // decimal style
    formatter.numberStyle = .decimal
    
    // formatting number to text
    guard let result = formatter.string(from: NSNumber(value: value)) else {
      return nil
    }
    
    return result
  }
}
