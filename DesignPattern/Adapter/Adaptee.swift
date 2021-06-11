//
//  Adaptee.swift
//  DesignPattern
//
//  Created by Nam Ngây on 10/06/2021.
//

import Foundation

protocol ValueReturn {
    func returnInValue(intData: Int)
}

class FirstAdaptee: ValueReturn {
    var firstValue = 0
    
    func returnInValue(intData: Int) {
        firstValue = intData
    }
}

class SecondAdaptee: ValueReturn {
    var secondValue = 0

    func returnInValue(intData: Int) {
        secondValue = intData
    }
}
