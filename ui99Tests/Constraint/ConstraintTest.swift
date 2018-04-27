//
//  ConstraintTest.swift
//  ui99Tests
//
//  Created by Hai Pham on 27/4/18.
//  Copyright © 2018 Swiften. All rights reserved.
//

import SwiftUtilities
import XCTest
@testable import ui99

public final class ConstraintTest: XCTestCase {}

public extension ConstraintTest {
  public func test_constraintDimensionOptions_shouldWork() {
    XCTAssertTrue(UI99.Constraint.Dimension.all.contains(UI99.Constraint.Dimension.left))
    XCTAssertTrue(UI99.Constraint.Dimension.all.contains(UI99.Constraint.Dimension.top))
    XCTAssertTrue(UI99.Constraint.Dimension.all.contains(UI99.Constraint.Dimension.right))
    XCTAssertTrue(UI99.Constraint.Dimension.all.contains(UI99.Constraint.Dimension.bottom))
    XCTAssertFalse(UI99.Constraint.Dimension.left.contains(UI99.Constraint.Dimension.top))
    XCTAssertFalse(UI99.Constraint.Dimension.top.contains(UI99.Constraint.Dimension.right))
    XCTAssertFalse(UI99.Constraint.Dimension.right.contains(UI99.Constraint.Dimension.bottom))
  }

  public func test_createDimensionalConstraints_shouldWork() {
    /// Setup
    let view1 = UIView(frame: CGRect.zero)
    let view2 = UIView(frame: CGRect.zero)

    /// When
    let constraints1 = UI99.Constraint
      .dimensionalConstraints(firstItem: view1,
                              secondItem: view2,
                              dimensions: .all)

    let constraints2 = UI99.Constraint
      .dimensionalConstraints(firstItem: view1,
                              secondItem: view2,
                              dimensions: [.left, .right])

    /// Then
    XCTAssertTrue(constraints1.all({$0.firstAttribute == $0.secondAttribute}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .left}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .top}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .right}))
    XCTAssertTrue(constraints1.contains(where: {$0.firstAttribute == .bottom}))
    XCTAssertTrue(constraints2.all({$0.firstAttribute == $0.secondAttribute}))
    XCTAssertTrue(constraints2.contains(where: {$0.firstAttribute == .left}))
    XCTAssertFalse(constraints2.contains(where: {$0.firstAttribute == .top}))
    XCTAssertTrue(constraints2.contains(where: {$0.firstAttribute == .right}))
    XCTAssertFalse(constraints2.contains(where: {$0.firstAttribute == .bottom}))
  }
}
