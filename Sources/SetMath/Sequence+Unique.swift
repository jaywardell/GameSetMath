//
//  Sequence+Unique.swift
//  SkyMark Data
//
//  Created by Joseph Wardell on 12/4/24.
//

import Foundation

extension Sequence where Iterator.Element: Hashable {
    
    // from https://www.avanderlee.com/swift/unique-values-removing-duplicates-array/
    public func unique() -> [Iterator.Element] {
        var seen: Set<Iterator.Element> = []
        return filter { seen.insert($0).inserted }
    }
}

