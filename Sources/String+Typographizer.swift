//
//  String+Typographizer.swift
//  Typographizer
//
//  Created by Frank Rausch on 2017-02-04.
//  Copyright © 2017 Frank Rausch.
//

import Foundation

extension String {
    public func typographized(language: String, isHTML: Bool = false, ignore: [UnicodeScalar] = [], debug: Bool = false, measurePerformance: Bool = false) -> String {
        var t = Typographizer(language: language, text: self)
        t.isHTML = isHTML
        t.ignored = ignore
        t.isDebugModeEnabled = debug
        t.isMeasurePerformanceEnabled = measurePerformance

        return t.typographize()
    }
}
