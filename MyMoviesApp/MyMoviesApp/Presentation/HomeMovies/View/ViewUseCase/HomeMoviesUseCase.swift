//
//  HomeMoviesUseCase.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

protocol HomeMoviesUseCaseProtocol {
    func getMoviesList(_ completion:@escaping (Swift.Result<[MovieModel],ErrorModel>)->Void)
}

struct HomeMoviesUseCase:HomeMoviesUseCaseProtocol{
    
    let useCases: MoviesUsesCasesProtocol
    
    init(useCases: MoviesUsesCasesProtocol) {
        self.useCases = useCases
    }
    
    func getMoviesList(_ completion:@escaping (Swift.Result<[MovieModel],ErrorModel>)->Void){
        useCases.getMoviesList(completion)
    }
}
