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
    
    @IBOutlet weak var movieTable: UITableView!
    
    
    
    var viewModel: HomeMoviesViewModelProtocol!
    var cordinator: HomeMoviesCordinatorProtocol!
    let configurator = HomeViewConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "My Movies"
    }
    
    private func setupView(){
        configurator.configure(controller: self)
        setupTableView()
        callMovies()
        bind()
        
    }
    
    
    private func setupTableView() {
        self.movieTable.delegate = self
        self.movieTable.dataSource = self
        movieTable.rowHeight = UITableView.automaticDimension
        self.movieTable.register(MovieTableViewCell.nib(), forCellReuseIdentifier: MovieTableViewCell.identifier)
    }
    
    

}

extension HomeMoviesViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getCountMovies()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        let movie = viewModel.getMovie(row:indexPath.row)
        cell.title.text = movie.title
        cell.sinopsis.text = movie.sinopsis
        cell.movieImage.downloaded(from: movie.image)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.cordinator.routeToDetalMoview(data: viewModel.getDataDetail(row: indexPath.row))
    }

    
    
}


extension HomeMoviesViewController{
    func callMovies(){
        self.viewModel.callMovies()
    }
    
    private func bind(){
        self.viewModel.actionData = { [weak self]() in
            DispatchQueue.main.async {
                self?.movieTable.reloadData()
            }
        }
    }
}
