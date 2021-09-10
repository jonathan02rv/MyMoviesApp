//
//  DataSourceNetwork.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

struct DataSourceNetwork: DataSourceNetworkProtocol{
    
    let urlSessionConfiguration = URLSessionConfiguration.default
    let urlSession: URLSession!
    
    init() {
        urlSessionConfiguration.timeoutIntervalForRequest = 15.0
        urlSessionConfiguration.timeoutIntervalForResource = 30.0
        urlSession = URLSession(configuration: self.urlSessionConfiguration)
    }
    
    func getMoviesList(_ completion: @escaping (Result<[MovieEntity], Error>) -> Void) {
        
    }
    
    
}
