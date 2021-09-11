//
//  DetailMovieConfigurator.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 11/09/21.
//

import Foundation
import Domain
import Data

protocol DetailMovieConfiguratorProtocol{
    func configure(controller: DetailMovieViewController)
}

struct DetailMovieConfigurator:DetailMovieConfiguratorProtocol{
    func configure(controller: DetailMovieViewController) {
        let useCase = DetailMovieUseCase(useCases: MoviesUsesCases(repository: MoviesRepository()))
        let viewModel = DetailMovieViewModel(useCaseDetail: useCase)        
        controller.viewModel = viewModel
        controller.bind()
        controller.bindEnableSeeVideo()
        viewModel.dataModel = controller.viewData as? DetailMovieViewData
    }
}
