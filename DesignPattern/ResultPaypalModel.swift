//
//  ResultPaypalModel.swift
//  DesignPattern
//
//  Created by Nam Ngây on 10/06/2021.
//

import Foundation

enum ResultPaypalType {
    case status
    case header
    case newInfo
    case line
    case copyInfo
    case bottomLine
    case titleAllocate
    case allocate
    case updateDetail
    
}

struct ResultPaypalModel: AllocateCCQDatasource {
    func getID() -> String {
        return id
    }
    
    func getName() -> String {
        return title
    }
    
    func getPercent() -> String {
        return value
    }
    
    func getAmount() -> String {
        return money
    }
    
    func getStatus() -> FundStatus? {
        return status
    }
    
    func getBackColor() -> UIColor? {
        return backgroundColor
    }
    
    var type: ResultPaypalType
    var title = ""
    var titleTextType: NSMutableAttributedString?
    var value = ""
    var valueTextType: NSMutableAttributedString?
    var hiddenMoney: Bool?
    var money = ""
    var backgroundColor: UIColor?
    var status: FundStatus?
    var allocate = ""
    var id = ""
    var isInvest = false
    
    init(type: ResultPaypalType) {
        self.type = type
    }
}

