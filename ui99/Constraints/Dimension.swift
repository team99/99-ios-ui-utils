//
//  Dimension.swift
//  ui99
//
//  Created by Hai Pham on 27/4/18.
//  Copyright © 2018 Swiften. All rights reserved.
//

// MARK: - Dimension.
public extension UI99.Constraint {

  /// Represents dimensions in a box. We can use these dimensions to add
  /// constraints for a view.
  public struct Dimension: OptionSet {
    public typealias RawValue = Int

    public var rawValue: Int

    public init(rawValue: Int) {
      self.rawValue = rawValue
    }

    public static var left: Dimension { return Dimension(rawValue: 1) }
    public static var top: Dimension { return Dimension(rawValue: 2) }
    public static var right: Dimension { return Dimension(rawValue: 3) }
    public static var bottom: Dimension { return Dimension(rawValue: 4) }

    public static var all: Dimension {
      return Dimension(rawValue:
        left.rawValue |
        top.rawValue |
        right.rawValue |
        bottom.rawValue)
    }
  }
}
