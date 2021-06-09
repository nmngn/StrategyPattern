//
//  ParseAdapter.swift
//  DesignPattern
//
//  Created by Nam Ngây on 10/06/2021.
//

import Foundation

class ParseAdapter: FloatTarget, StringTarget {
    var delegate: DataToIntDelegate?

    func sendFloatData(data: Float) {
        let newData = self.floatToInt(data: data)
        delegate?.newFirstInt(intData: newData)
    }
    
    func sendStringData(data: String) {
        let newData = self.stringToInt(data: data)
        delegate?.newSecondInt(intData: newData)
    }
    
    func floatToInt(data: Float) -> Int {
        return Int(data)
    }
    
    func stringToInt(data: String) -> Int {
        return Int(data) ?? 0
    }
}
