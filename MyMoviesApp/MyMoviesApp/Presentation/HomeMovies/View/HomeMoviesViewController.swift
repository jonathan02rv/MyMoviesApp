//
//  HomeMoviesViewController.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import UIKit
import Data
import Domain

class HomeMoviesViewController: UIViewController {
    let useCase = HomeMoviesUseCase(useCases: MoviesUsesCases(repository: MoviesRepository()))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        useCase.getMoviesList { (result) in
            switch result{
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
