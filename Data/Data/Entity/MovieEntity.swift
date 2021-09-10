//
//  MovieEntity.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

struct MoviewPage: Codable{
    let page:Int
    let results:[MovieEntity]
}

struct MovieEntity:Codable{
    let id:Int
    let title:String
    let vote_average:Double
    let overview:String
    let backdrop_path:String
    
   
}

extension MovieEntity{
    static func maperArray(data:[MovieEntity])->[MovieModel]{
        data.map{
            MovieModel(movieId: $0.id, title: $0.title, sinopsis: $0.overview, voteAverage: $0.vote_average, image: "\(AppEnvironment.configuration.serverImageBaseUrl)\($0.backdrop_path)")
        }
    }
}
