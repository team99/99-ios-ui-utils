//
//  ConstraintTest.swift
//  ui99Tests
//
//  Created by Hai Pham on 27/4/18.
//  Copyright © 2018 Swiften. All rights reserved.
//

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
}
