//
//  Environment.swift
//  SettingsBundleDemo
//
//  Created by Vasiliki Trachani on 6/2/21.
//

import Foundation

enum Environment: String {
    case development
    case mock_server
    case production
    
    var name: String {
        return self.rawValue
    }
}

extension Environment {
    public var APIBaseURL: String {
        get {
            switch self {
            case .development:
                return "https://developmentUrl.gr"
            case .mock_server:
                return "https://mockServerUrl.gr"
            case .production:
                return "https://productionUrl.gr"
            }
        }
        
    }
   
}
