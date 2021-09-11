//
//  HomeMoviesCordinator.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import UIKit

protocol HomeMoviesCordinatorProtocol{
    var view: HomeMoviesViewController? {get set}
    func routeToDetalMoview(data: ViewData)
}

class HomeMoviesCordinator {
    weak var view: HomeMoviesViewController?
    
    init(view: HomeMoviesViewController) {
        self.view = view
    }
    
    init() {
    }
}

extension HomeMoviesCordinator: HomeMoviesCordinatorProtocol{
    func routeToDetalMoview(data: ViewData){
        let detailView = DetailMovieViewController(nibName: "DetailMovieViewController", bundle: Bundle.main)
        detailView.viewData = data
        self.view?.navigationController?.pushViewController(detailView, animated: true)
    }
    
    func createHomeViewRoot()->UINavigationController?{
        //MARK: - INITIAL STORYBOARD
        let storyboard = UIStoryboard(name: "Home", bundle:Bundle.main)
        guard let rootVC = storyboard.instantiateViewController(withIdentifier: "HomeMoviesViewController") as? HomeMoviesViewController else{return nil}
        let navController = UINavigationController(rootViewController: rootVC)
        //rootVC.navigationController?.setNavigationBarHidden(true, animated: true)
        return navController
    }
}
