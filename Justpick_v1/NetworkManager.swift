//
//  NetworkManager.swift
//  Justpick_v1
//
//  Created by Claire Graybeal on 7/31/17.
//  Copyright © 2017 Claire Graybeal. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager ()
    
    private init () {}
    
    func getMovie(forTitle title: String, andPoster poster: URL) {
        
        let urlString = "https://api.themoviedb.org/3/search/movie?api_key=f1775864341e965806022200bdc5beaa&language=en-US&query=\(title.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed))&page=1&include_adult=false"
        
        guard let url = URL(string: urlString) else { fatalError("Could not create URL") }
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
        }
    
}
}
