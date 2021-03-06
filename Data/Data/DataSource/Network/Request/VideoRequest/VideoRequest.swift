//
//  VideoRequest.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 11/09/21.
//

import Foundation

internal struct RequestOBjectVideo: RequestObject{
    var path: String = "/videos"
    var method: HTTPMethod = .get
    var headers: HTTPHeaders
    var parameters: Parameters = [:]
    
    init(idMovie:String) {
        headers = headerDefault
        self.path = "/movie/\(idMovie)\(path)"
    }
}
