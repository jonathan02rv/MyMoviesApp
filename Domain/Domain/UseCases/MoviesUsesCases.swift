//
//  MoviesUsesCases.swift
//  Domain
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

public protocol MoviesUsesCasesProtocol {
    func getMoviesList(_ completion:@escaping (Swift.Result<[MovieModel],Error>)->Void)
}

struct MoviesUsesCases: MoviesUsesCasesProtocol{
    var repository: MoviesRepositoryProtocol
    
    public init(repository: MoviesRepositoryProtocol){
        self.repository = repository
    }
    
    func getMoviesList(_ completion: @escaping (Result<[MovieModel], Error>) -> Void) {
        
    }
    
    
}
