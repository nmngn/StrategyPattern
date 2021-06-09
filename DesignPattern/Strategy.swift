//
//  Strategy.swift
//  DesignPattern
//
//  Created by Nam Ngây on 10/06/2021.
//

import Foundation

enum FundStatus: String {
    case CREATED = "CREATED"
    case COLLECTED = "COLLECTED"
    case PROCESSING = "PROCESSING"
    case SUCCEED = "SUCCEED"
    case CANCELED = "CANCELED"
}

class UIColor {
    // Define UIColor
}

protocol AllocateCCQDatasource {
    func getID() -> String
    func getName() -> String
    func getPercent() -> String
    func getAmount() -> String
    func getStatus() -> FundStatus?
    func getBackColor() -> UIColor?
}
