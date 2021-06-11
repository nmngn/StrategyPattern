//
//  main.swift
//  DesignPattern
//
//  Created by Nam Ngây on 09/06/2021.
//

import Foundation

class Client {
    func createValue() -> (Int, Int) {
        let tee1 = FirstAdaptee()
        let tee2 = SecondAdaptee()
        
        let adap1 = ParseAdapter(tee1: tee1, tee2: tee2)
        adap1.sendFloatData(data: 10.0)
        adap1.sendStringData(data: "100")
        return (tee1.firstValue, tee2.secondValue)
    }
}

class User {
    var strategy: TypeCalculate?
    
    init(strategy: TypeCalculate) {
        self.strategy = strategy
    }
    
    func calculate(a: Int, b: Int) -> Int {
        return strategy?.calculate(a: a, b: b) ?? 0
    }
    
}


let ex = Client()
ex.createValue()

var value1 = ex.createValue().0

var value2 = ex.createValue().1

let math = Math()
let user = User(strategy: math)
let result = user.calculate(a: value1, b: value2)
print(value1, value2) 
print("Result: \(result)")
