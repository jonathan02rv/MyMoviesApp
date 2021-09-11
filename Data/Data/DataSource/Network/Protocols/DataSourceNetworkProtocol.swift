//
//  DataSourceNetworkProtocol.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

protocol DataSourceNetworkProtocol{
    func getMoviesList(request: RequestObject,_ completion: @escaping (Swift.Result<[MovieEntity], ErrorEntity>) -> Void)
    func getVideo(request: RequestObject,_ completion: @escaping (Swift.Result<[VideoMovieEntity], ErrorEntity>) -> Void)
}
