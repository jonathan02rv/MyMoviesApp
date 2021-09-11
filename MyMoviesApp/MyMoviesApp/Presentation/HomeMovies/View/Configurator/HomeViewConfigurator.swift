//
//  HomeViewConfigurator.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain
import Data

protocol HomeViewConfiguratorProtocol{
    func configure(controller: HomeMoviesViewController)
}
struct HomeViewConfigurator {
    func configure(controller: HomeMoviesViewController){
        let cordinator = HomeMoviesCordinator(view: controller)
        let useCase = HomeMoviesUseCase(useCases: MoviesUsesCases(repository: MoviesRepository()))
        controller.viewModel = HomeMoviesViewModel(useCaseHome: useCase)
        controller.cordinator = cordinator
    }
}
