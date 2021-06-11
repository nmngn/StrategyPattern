//
//  ParseAdapter.swift
//  DesignPattern
//
//  Created by Nam Ngây on 10/06/2021.
//

import Foundation

class ParseAdapter: FloatTarget, StringTarget {
    var adapteeFirst: FirstAdaptee?
    var adapteeSecond: SecondAdaptee?

    init(tee1: FirstAdaptee, tee2: SecondAdaptee) {
        self.adapteeFirst = tee1
        self.adapteeSecond = tee2
    }
  
    func sendFloatData(data: Float) {
        let newData = self.floatToInt(data: data)
        self.adapteeFirst?.returnInValue(intData: newData)
    }
    
    func sendStringData(data: String) {
        let newData = self.stringToInt(data: data)
        self.adapteeSecond?.returnInValue(intData: newData)
    }
    
    func floatToInt(data: Float) -> Int {
        return Int(data)
    }
    
    func stringToInt(data: String) -> Int {
        return Int(data) ?? 0
    }
}
