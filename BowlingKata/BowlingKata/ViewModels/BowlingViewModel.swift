//
//  BowlingViewModel.swift
//  BowlingKata
//
//  Created by on 12/02/2019.
//  Copyright © 2019 . All rights reserved.
//

import Foundation

typealias BowlingResultCallback = ((Int) -> Void)

struct BowlingViewModel
{
  var bowlingResultCallback: BowlingResultCallback?
  
  func bowlingResultsSubmitted(results: String)
  {
    let score = BowlingScoreCalculator.calculateGameScoreFromFramesString(results)
    bowlingResultCallback?(score)
  }
}
