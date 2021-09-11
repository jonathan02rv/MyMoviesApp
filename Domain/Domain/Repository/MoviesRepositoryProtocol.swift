//
//  MoviesRepositoryProtocol.swift
//  Domain
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

public protocol MoviesRepositoryProtocol {
    func getMoviesList(_ completion:@escaping (Swift.Result<[MovieModel],ErrorModel>)->Void)
    func getVideo(movieId: String,_ completion: @escaping (Swift.Result<[VideoMovieModel], ErrorModel>) -> Void)
}
