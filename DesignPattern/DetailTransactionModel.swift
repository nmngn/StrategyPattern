//
//  DetailTransactionModel.swift
//  DesignPattern
//
//  Created by Nam Ngây on 10/06/2021.
//

import Foundation


enum DetailTransactionType {
    case status
    case info
    case cancel
    case input
    
    case header
    case newInfo
    case bottomLine
    case line
    case partner
    case copyInfo
    
    case titleAllocate
    case allocate
    case updateDetail
    
}

struct DetailTransactionModel: AllocateCCQDatasource {
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
    
    var type: DetailTransactionType
    var descriptionText: String?
    var hiddenWarning = false
    var processingTrans: String?
    
    
    var title = ""
    var titleTextType: NSMutableAttributedString?
    var subTitle = ""
    var value = ""
    var valueTextType: NSMutableAttributedString?
    var imagePartner = ""
    var namePartner = ""
    var addressPartner = ""
    
    var backgroundColor: UIColor?
    var status: FundStatus?
    var allocate = ""
    var id = ""
    var money = ""
    var isInvest = false
    init(type: DetailTransactionType) {
        self.type = type
    }
}
