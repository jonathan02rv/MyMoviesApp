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
    let movieId:Int
    let title:String
    let voteAverage:Double
    let description:String
    let image:String
    
    enum CokingKeys: String, CodingKey{
        case movieId = "id"
        case title
        case voteAverage = "vote_average"
        case description = "overview"
        case image = "backdrop_path"
    }
}

extension MovieEntity{
    static func maperArray(data:[MovieEntity])->[MovieModel]{
        data.map{
            MovieModel(movieId: $0.movieId, title: $0.title, sinopsis: $0.description, voteAverage: $0.voteAverage, image: $0.image)
        }
    }
}
