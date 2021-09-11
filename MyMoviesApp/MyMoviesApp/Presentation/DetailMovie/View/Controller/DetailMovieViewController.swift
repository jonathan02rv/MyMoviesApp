//
//  DetailMovieViewController.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var sinopsis: UILabel!
    @IBOutlet weak var datePremier: UILabel!
    @IBOutlet weak var score: UILabel!
    
    var viewData:ViewData?
    var viewModel: DetailMovieViewModelProtocol!
    let configurator = DetailMovieConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }

    private func setupView(){
        self.configurator.configure(controller: self)
        fillView()
        self.viewModel.callVideoTrailer()
    }
    
    private func fillView(){
        guard let dataModel = viewModel.getDetailData() else{return}
        self.title = dataModel.title
        self.sinopsis.text = dataModel.sinopsis
        self.datePremier.text = dataModel.datePremier
        self.score.text = "\(dataModel.score)"
        self.movieImage.downloaded(from: dataModel.image)
    }

}
