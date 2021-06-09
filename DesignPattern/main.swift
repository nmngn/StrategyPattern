//
//  main.swift
//  DesignPattern
//
//  Created by Nam Ngây on 09/06/2021.
//

import Foundation

class StringOriginData {
    var delegate: StringTarget?
    
    func letParse() {
        delegate?.sendStringData(data: "100")
    }
}

class FloatOriginData {
    var delegate: FloatTarget?
    
    func letParse() {
        delegate?.sendFloatData(data: 10.0)
    }
}

class Calculation: DataToIntDelegate {

    var a,b: Int?
    var type: TypeCalculate?
    
    func newFirstInt(intData: Int) {
        self.a = intData
    }
    func newSecondInt(intData: Int) {
        self.b = intData
    }
    
    func chooseType(type: TypeCalculate) {
        self.type = type
    }
    
    func calculate() -> Int {
        guard let a = self.a, let b = self.b else { return 0}
        return type?.calculate(a: a, b: b) ?? 0
    }
    
}

class Example {
    func getValue() -> Int {
        var calculator = Calculation()
        calculator.chooseType(type: Math)
        return calculator.calculate()
        
//        calculator.chooseType(type: Multiply)
//        return calculator.calculate()
    }
}
