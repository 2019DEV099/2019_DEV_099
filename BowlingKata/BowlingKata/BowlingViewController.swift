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
  
  private var viewModel: BowlingViewModel = BowlingViewModel()
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    inputTextField.delegate = self
    
    viewModel.bowlingResultCallback = { [weak self] score in
      guard let strongSelf = self else { return }
      strongSelf.resultLabel.text = String(score)
    }
  }
}

extension BowlingViewController: UITextFieldDelegate
{
  func textFieldShouldReturn(_ textField: UITextField) -> Bool
  {
    if let input = textField.text
    {
      viewModel.bowlingResultsSubmitted(results: input)
    }
    return textField.resignFirstResponder()
  }
}
