//
//  DetailMovieViewModel.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

protocol DetailMovieViewModelProtocol{
    func callDetailMoview()
    func getDetailData()->DetailMovieViewData?
}

class DetailMovieViewModel: DetailMovieViewModelProtocol{
    
    var actionData = {() -> Void in}
    var dataModel : DetailMovieViewData? {
        didSet{
            actionData()
        }
    }
    
    var useCaseDetail: DetailMovieUseCaseProtocol
    
    init(useCaseDetail: DetailMovieUseCaseProtocol) {
        self.useCaseDetail = useCaseDetail
    }
    
    func getDetailData()->DetailMovieViewData?{
        return dataModel
    }
    
    func callDetailMoview(){
        
    }
}
