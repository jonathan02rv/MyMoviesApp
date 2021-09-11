//
//  DetailMovieUseCase.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

protocol DetailMovieUseCaseProtocol {
    func getVideo(movieId: String,_ completion: @escaping (Swift.Result<[VideoMovieModel], ErrorModel>) -> Void)
}

struct DetailMovieUseCase:DetailMovieUseCaseProtocol{
        
    let useCases: MoviesUsesCasesProtocol
    
    init(useCases: MoviesUsesCasesProtocol) {
        self.useCases = useCases
    }
    
    func getVideo(movieId: String, _ completion: @escaping (Result<[VideoMovieModel], ErrorModel>) -> Void) {
        useCases.getVideo(movieId: movieId, completion)
    }
  
}
