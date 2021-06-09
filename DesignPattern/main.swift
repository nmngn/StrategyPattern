//
//  main.swift
//  DesignPattern
//
//  Created by Nam Ngây on 09/06/2021.
//

import Foundation

class TypeStategy {
    var dataSource: AllocateCCQDatasource?
    
    var modelR = ResultPaypalModel(type: .allocate)
    var modelD = DetailTransactionModel(type: .header)
        
    func getTransactionName() -> String {
        return dataSource?.getName() ?? ""
    }
    
    func getMoneyValue() -> String {
        return dataSource?.getAmount() ?? ""
    }
}

class DetailProcessing {
    
    var type = TypeStategy()
    
    func getData() {
        type.modelR.title = "GD so 1"
        type.modelD.money = "1.000.000$"
        
        let amount = type.getMoneyValue()
        print(amount)
        
        let name = type.getTransactionName()
        print(name)
    }

}
