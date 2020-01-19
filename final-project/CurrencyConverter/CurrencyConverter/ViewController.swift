//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Kristaps Grinbergs on 19/01/2020.
//  Copyright © 2020 fassko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // from value text label
  @IBOutlet weak var fromLabel: UITextField!
  
  // to value text label
  @IBOutlet weak var toLabel: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    fromLabel.becomeFirstResponder()
  }
  
  @IBAction func valueFromChanged(_ sender: Any) {
    if let fromValue = Double(fromLabel.text!) {
      let eur = fromValue * 0.000066
      toLabel.text = eur.formattedStyle
    }
  }
  
  @IBAction func valueToChanged(_ sender: Any) {
    if let toValue = Double(toLabel.text!) {
      let idr = toValue * 15136.72
      fromLabel.text = idr.formattedStyle
    }
  }
  
}

extension Double {
  var formattedStyle: String? {
    let formatter = NumberFormatter()
    formatter.locale = NSLocale(localeIdentifier: "en_US") as Locale
    formatter.minimumFractionDigits = 2
    formatter.maximumFractionDigits = 2
    formatter.numberStyle = .decimal
    
    guard let result = formatter.string(from: NSNumber(value: self)) else {
      return nil
    }
    
    return String(result)
  }
}
