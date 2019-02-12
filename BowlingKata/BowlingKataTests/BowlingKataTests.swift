//
//  BowlingKataTests.swift
//  BowlingKataTests
//
//  Created by on 12/02/2019.
//  Copyright © 2019 . All rights reserved.
//

import XCTest
@testable import BowlingKata

class BowlingKataTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
  
  func testBowlingFrame()
  {
    let frame = BowlingFrame(bowlingFrame: "9-")
    XCTAssert(frame.bonus == .none)
    XCTAssert(frame.pinsKnockedDownAtThrow.reduce(0, +) == 9)
  }
  
  func testBowlingFrameSpare()
  {
    let frame = BowlingFrame(bowlingFrame: "9/")
    XCTAssert(frame.bonus == .spare)
    XCTAssert(frame.pinsKnockedDownAtThrow.reduce(0, +) == 10)
  }
  
  func testBowlingFrameStrike()
  {
    let frame = BowlingFrame(bowlingFrame: "X")
    XCTAssert(frame.bonus == .strike)
    XCTAssert(frame.pinsKnockedDownAtThrow.reduce(0, +) == 10)
  }
  
  func testBowlingPerfectScore()
  {
    let s = "X X X X X X X X X X X X" // 300
  /// "5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/5" -> 150
    let score = BowlingScoreCalculator.calculateGameScoreFromFramesString(s)
    XCTAssert(score == 300)
  }
  
  func testBowlingAllSpareScores()
  {
    let s = "5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/5" // -> 150
    let score = BowlingScoreCalculator.calculateGameScoreFromFramesString(s)
    XCTAssert(score == 150)
  }
  
  func testBowlingNoSpareAndNoStrikes()
  {
    let s = "9- 9- 9- 9- 9- 9- 9- 9- 9- 9-" // 90
    let score = BowlingScoreCalculator.calculateGameScoreFromFramesString(s)
    XCTAssert(score == 90)
  }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}
