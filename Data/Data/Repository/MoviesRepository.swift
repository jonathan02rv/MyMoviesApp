//
//  MoviesRepository.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

public struct MoviesRepository:MoviesRepositoryProtocol{
    
    private let networkDataSource: DataSourceNetworkProtocol
    
    public init(){
        self.networkDataSource = DataSourceNetwork()
    }
    
    public func getMoviesList(_ completion: @escaping (Result<[MovieModel], ErrorModel>) -> Void) {
        
        let request = RequestOBjectMostPopular()
        
        networkDataSource.getMoviesList(request: request) { (result) in
            switch result{
            case .success(let data):
                completion(.success(MovieEntity.maperArray(data: data)))
            case .failure(let error):
                completion(.failure(ErrorEntity.maper(errorData: error)))
            }
        }
    }
    
    public func getVideo(movieId: String,_ completion: @escaping (Swift.Result<[VideoMovieModel], ErrorModel>) -> Void){
        let request2 = RequestOBjectVideo(idMovie: movieId)
        networkDataSource.getVideo(request: request2) { (result) in
            switch result{
            case .success(let data):
                completion(.success(VideoMovieEntity.maper(data: data)))
            case .failure(let error):
                completion(.failure(ErrorEntity.maper(errorData: error)))
            }
        }
    }
    
}
