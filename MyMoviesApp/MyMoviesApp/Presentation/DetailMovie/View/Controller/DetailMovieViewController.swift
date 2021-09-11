//
//  DetailMovieViewController.swift
//  MyMoviesApp
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet weak var btnSeeTrailer: UIButton! {didSet{btnSeeTrailer.isEnabled = false}}
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
        getVideo()
    }
    
    private func fillView(){
        guard let dataModel = viewModel.getDetailData() else{return}
        self.title = dataModel.title
        self.sinopsis.text = dataModel.sinopsis
        self.datePremier.text = dataModel.datePremier
        self.score.text = "\(dataModel.score)"
        self.movieImage.downloaded(from: dataModel.image)
    }
    
    
    @IBAction func seeTrailerAction(_ sender: Any) {
        seeTrailerFromUrl()
    }
    
}

extension DetailMovieViewController{
    
    private func seeTrailerFromUrl(){
        guard let urlString = viewModel.getFirstVideo()?.youTubeUrl, let url = URL(string: urlString) else{return}
        UIApplication.shared.open(url)
    }
    
    func getVideo(){
        self.viewModel.callVideoTrailer()
    }
    
    func bindEnableSeeVideo(){
        self.viewModel.actionDataVideo = { [weak self]() in
            DispatchQueue.main.async {
                self?.btnSeeTrailer.isEnabled = (self?.viewModel.getFirstVideo() != nil)
            }
        }
    }
    
    func bind(){
        self.viewModel.actionData = { [weak self]() in
            DispatchQueue.main.async {
                self?.fillView()
            }
        }
    }
}
