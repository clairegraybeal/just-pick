//
//  Movies.swift
//  Justpick_v1
//
//  Created by Claire Graybeal on 7/31/17.
//  Copyright © 2017 Claire Graybeal. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var poster: URL
    var summary: String? = nil
    var rating: Double? = nil
    var releaseDate: String? = nil
    init(title: String, poster: URL, summary: String, rating: Double, releaseDate: String) {
        self.title = title
        self.poster = poster
        self.summary = summary
        self.rating = rating
        self.releaseDate = releaseDate
}

}
