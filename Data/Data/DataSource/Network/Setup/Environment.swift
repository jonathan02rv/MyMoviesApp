//
//  Environment.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

public enum Environment: String {
    case Development = "com.jhonatahan.ios.MyMoviesApp.dev"
    case UAT = "com.jhonatahan.ios.MyMoviesApp.uat"
    case Production = "com.jhonatahan.ios.MyMoviesApp"
}

public extension Environment {
    
    var configuration: Configuration.Type {
        switch self {
        case .Development: return DevAppConfig.self
        case .UAT: return  UatAppConfig.self
        case .Production: return ProdAppConfig.self
        }
    }
}
