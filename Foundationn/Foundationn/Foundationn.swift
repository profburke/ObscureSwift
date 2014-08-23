//
//  Foundationn.swift
//  Foundationn
//
//  Created by Matthew Burke on 8/12/14.
//  Copyright (c) 2014 BlueDino Software. All rights reserved.
//

import Foundation



// By Ken: http://stackoverflow.com/questions/24034043/how-do-i-check-if-a-string-contains-another-string-in-swift

extension String {
    func contains(other: String) -> Bool {
        var start = startIndex
        
        do {
            var subString = self[Range(start: start++, end: endIndex)]
            if subString.hasPrefix(other) {
                return true
            }
            
        } while start != endIndex
        
        return false
    }
}



extension String : BooleanType {
    public var boolValue : Bool { get {
        if self.contains("test") {
            return true
        } else {
            return false
        }
    }
    }
}

