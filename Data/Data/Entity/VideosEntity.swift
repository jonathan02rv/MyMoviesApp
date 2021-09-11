//
//  VideosEntity.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 11/09/21.
//

import Foundation
import Domain

struct VideoEntity: Codable{
    let results:[VideoMovieEntity]
}

struct VideoMovieEntity: Codable {
    let name:String
    let key: String
    let site: String
    let size: Int
    let type: String
    let official: Bool
    let published_at: String
    let id: String
}

extension VideoMovieEntity{
    static func maper(data: [VideoMovieEntity])->[VideoMovieModel]{
        data.map{
            VideoMovieModel(name: $0.name,
                            youTubeUrl: $0.site == Constants.siteYouTube ? "\(Constants.baseUrlYouTube)\($0.key)" : "",
                            official: $0.official,
                            publishedAt: $0.published_at,
                            id: $0.id)
        }
    }
}
