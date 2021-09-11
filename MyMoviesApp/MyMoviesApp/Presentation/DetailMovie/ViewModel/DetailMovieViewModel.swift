//
//  DetailMovieViewModel.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

protocol DetailMovieViewModelProtocol{
    var actionData:()->() {get set}
    var actionDataVideo:()->() {get set}
    func callVideoTrailer()
    func getDetailData()->DetailMovieViewData?
    func getFirstVideo()->VideoMovieModel?
}

class DetailMovieViewModel: DetailMovieViewModelProtocol{
    
    var actionData = {() -> Void in}
    var actionDataVideo = {() -> Void in}
    var dataModel : DetailMovieViewData? {
        didSet{
            actionData()
        }
    }
    
    var videoArrayData = [VideoMovieModel]() {
        didSet{
            actionDataVideo()
        }
    }
    
    var useCaseDetail: DetailMovieUseCaseProtocol
    
    init(useCaseDetail: DetailMovieUseCaseProtocol) {
        self.useCaseDetail = useCaseDetail
    }
    
    func getDetailData()->DetailMovieViewData?{
        return dataModel
    }
    
    func getFirstVideo()->VideoMovieModel?{
        videoArrayData.first
    }
    
    func callVideoTrailer(){
        guard let moviewId = dataModel?.movieId else{return}
        useCaseDetail.getVideo(movieId: moviewId) { [weak self](result) in
            switch result{
            case .success(let data):
                self?.videoArrayData = data
            case .failure(let error):
                print(error)
            }
        }
    }
}
