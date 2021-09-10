//
//  MovieEntity.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation
import Domain

struct MovieEntity:Codable{
    var title:String
    var description:String
}

extension MovieEntity{
    static func maperArray(data:[MovieEntity])->[MovieModel]{
        data.map{
            MovieModel(title: $0.title, description: $0.description)
        }
    }
}
