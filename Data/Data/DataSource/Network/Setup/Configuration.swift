//
//  Configuration.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

public let AppEnvironment: Environment = {
    
    let environment = Environment(rawValue: Bundle.main.bundleIdentifier ?? "")
    switch environment {
    case .Development:
        return Environment.Development
    case .UAT:
        return Environment.UAT
    case .Production:
        return Environment.Production
    default:
        fatalError("Environment Dont Exist")
    }
    
}()

public protocol Configuration {
    static var serverImageBaseUrl:String {get}
    static var apiKey: String { get }
    static var serverBaseUrl: String { get }
}

struct ProdAppConfig: Configuration {    
    static let serverBaseUrl = "https://api.themoviedb.org/3"
    static var apiKey = "?api_key=5db6e65d7a5cb9e8ef2dee912c6016d8"
    static var serverImageBaseUrl = "https://image.tmdb.org/t/p/w400"
}

struct UatAppConfig: Configuration {
    static let serverBaseUrl = "https://api.themoviedb.org/3"
    static var apiKey = "?api_key=5db6e65d7a5cb9e8ef2dee912c6016d8"
    static var serverImageBaseUrl = "https://image.tmdb.org/t/p/w400"
}

struct DevAppConfig: Configuration {
    static let serverBaseUrl = "https://api.themoviedb.org/3"
    static var apiKey = "?api_key=5db6e65d7a5cb9e8ef2dee912c6016d8"
    static var serverImageBaseUrl = "https://image.tmdb.org/t/p/w400"
}
