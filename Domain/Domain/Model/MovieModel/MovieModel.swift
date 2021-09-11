//
//  MovieModel.swift
//  Domain
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

public struct MovieModel{
    public let movieId:Int
    public let title:String
    public let sinopsis:String
    public let voteAverage: Double
    public let image: String
    public let datePremier: String
    
    public init(movieId:Int, title:String, sinopsis:String, voteAverage: Double, image: String, datePremier:String){
        self.title = title
        self.sinopsis = sinopsis
        self.movieId = movieId
        self.voteAverage = voteAverage
        self.image = image
        self.datePremier = datePremier
    }
}
