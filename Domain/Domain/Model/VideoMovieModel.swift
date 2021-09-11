//
//  VideoMovieModel.swift
//  Domain
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 11/09/21.
//

import Foundation


public struct VideoMovieModel{
    public let name:String
    public let youTubeUrl: String
    public let official: Bool
    public let publishedAt: String
    public let id: String
    
    public init(name:String,youTubeUrl: String,official: Bool,publishedAt: String,id: String){
        self.name = name
        self.youTubeUrl = youTubeUrl
        self.official = official
        self.publishedAt = publishedAt
        self.id = id
    }
}
