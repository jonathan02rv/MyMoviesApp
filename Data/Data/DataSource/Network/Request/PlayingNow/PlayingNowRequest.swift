//
//  PlayingNowRequest.swift
//  Data
//
//  Created by Jhonatahan Orlando Rivera Vilcapoma on 10/09/21.
//

import Foundation

internal struct RequestOBjectPlayingNow: RequestObject{
    var path: String = "/movie/now_playing"
    var method: HTTPMethod = .get
    var headers: HTTPHeaders
    var parameters: Parameters = [:]
    
    init() {
        headers = headerDefault
    }
}
