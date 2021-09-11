//
//  DetailMovieUseCase.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

protocol DetailMovieUseCaseProtocol {
    func getDetailMoview(movieId: Int)
    func getMoviesList(_ completion:@escaping (Swift.Result<[MovieModel],ErrorModel>)->Void)
}

struct DetailMovieUseCase:DetailMovieUseCaseProtocol{
    
    let useCases: MoviesUsesCasesProtocol
    
    init(useCases: MoviesUsesCasesProtocol) {
        self.useCases = useCases
    }
    
    func getDetailMoview(movieId: Int){
        
    }
    
    func getMoviesList(_ completion:@escaping (Swift.Result<[MovieModel],ErrorModel>)->Void){
        useCases.getMoviesList(completion)
    }
}
