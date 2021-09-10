//
//  MovieModel.swift
//  Domain
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

public struct MovieModel{
    public let title:String
    public let description:String
    
    public init(title:String, description:String){
        self.title = title
        self.description = description
    }
}
