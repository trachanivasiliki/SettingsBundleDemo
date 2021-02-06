//
//  EnvironmentHelper.swift
//  SettingsBundleDemo
//
//  Created by Vasiliki Trachani on 6/2/21.
//

import Foundation

class EnvironmentHelper {
    fileprivate func mockServerEnabled() -> Bool {
        let userDefaults =  UserDefaults.standard
        let mock_server_enabled = userDefaults.bool(forKey: "mock_server_enabled")
        return mock_server_enabled
    }

    func getCurrentEnvironment() -> Environment {
        let mock_server_enabled = self.mockServerEnabled()
        #if DEBUG
        switch mock_server_enabled {
        case true:
            return .mock_server
        case false:
            return .development
        }
        #else
        return .production
        #endif
    }
    
}
