//
//  ViewController.swift
//  BowlingKata
//
//  Created by on 12/02/2019.
//  Copyright © 2019 . All rights reserved.
//

import UIKit

class BowlingViewController: UIViewController
{
  @IBOutlet weak var inputTextField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    inputTextField.delegate = self
  }
}

extension BowlingViewController: UITextFieldDelegate
{
  func textFieldShouldReturn(_ textField: UITextField) -> Bool
  {
    // Call the function to evaluate the score
    return textField.resignFirstResponder()
  }
}
