//
//  MostPopularRequest.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

internal struct RequestOBjectMostPopular: RequestObject{
    var path: String = "/movie/popular"
    var method: HTTPMethod = .get
    var headers: HTTPHeaders
    var parameters: Parameters = [:]
    
    init() {
        headers = headerDefault
    }
}
