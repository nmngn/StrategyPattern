//
//  Adaptee.swift
//  DesignPattern
//
//  Created by Nam Ngây on 10/06/2021.
//

import Foundation

class FirstAdaptee {
    var firstValue = 0
    
    func newFirstInt(intData: Int) {
        firstValue = intData
        print("Fisrt is \(intData)")
    }
}

class SecondAdaptee {
    var secondValue = 0
    
    func newSecondInt(intData: Int) {
        secondValue = intData
        print("Second is \(intData)")
    }
}
