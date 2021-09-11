//
//  MoviesUsesCases.swift
//  Domain
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

public protocol MoviesUsesCasesProtocol {
    func getMoviesList(_ completion:@escaping (Swift.Result<[MovieModel],ErrorModel>)->Void)
    func getVideo(movieId: String,_ completion: @escaping (Swift.Result<[VideoMovieModel], ErrorModel>) -> Void)
}

public struct MoviesUsesCases: MoviesUsesCasesProtocol{
    var repository: MoviesRepositoryProtocol
    
    public init(repository: MoviesRepositoryProtocol){
        self.repository = repository
    }
    
    public func getMoviesList(_ completion: @escaping (Result<[MovieModel], ErrorModel>) -> Void) {
        repository.getMoviesList(completion)
    }
    
    public func getVideo(movieId: String,_ completion: @escaping (Swift.Result<[VideoMovieModel], ErrorModel>) -> Void){
        repository.getVideo(movieId: movieId, completion)
    }
}
