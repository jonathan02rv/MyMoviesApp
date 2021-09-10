//
//  HomeMoviesViewModel.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

protocol HomeMoviesViewModelProtocol{
    var actionData:()->() {get set}
    func callMovies()
    func getCountMovies()->Int
    func getAllMovies()->[MovieModel]
    func getMovie(row:Int)->MovieModel
}

class HomeMoviesViewModel: HomeMoviesViewModelProtocol{
    
    var actionData = {()->Void in}
    var errorAction = {()->Void in}
    
    var useCaseHome: HomeMoviesUseCaseProtocol
    
    var dataModel = [MovieModel](){
        didSet{
            actionData()
        }
    }
    
    init(useCaseHome: HomeMoviesUseCaseProtocol) {
        self.useCaseHome = useCaseHome
    }
    
    func callMovies(){
        useCaseHome.getMoviesList { [weak self](result) in
            switch result{
            case .success(let data):
                self?.dataModel = data
            case .failure(let error):
                self?.errorAction()
                print(error.description)
            }
        }
    }
    
    func getAllMovies()->[MovieModel]{
        return dataModel
    }
    
    func getMovie(row:Int)->MovieModel{
        return dataModel[row]
    }
    
    func getCountMovies()->Int{
        return dataModel.count > 0 ? dataModel.count : 0
    }
}
