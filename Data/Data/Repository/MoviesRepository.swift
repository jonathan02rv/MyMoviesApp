//
//  MoviesRepository.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

class MoviesRepository:MoviesRepositoryProtocol{
    
    private let networkDataSource: DataSourceNetworkProtocol
    
    public init(){
        self.networkDataSource = DataSourceNetwork()
    }
    
    func getMoviesList(_ completion: @escaping (Result<[MovieModel], Error>) -> Void) {
        
    }
    
    
}
