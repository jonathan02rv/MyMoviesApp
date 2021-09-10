//
//  DataSourceNetworkProtocol.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

protocol DataSourceNetworkProtocol{
    func getMoviesList(_ completion: @escaping (Swift.Result<[MovieEntity], Error>) -> Void)
}
