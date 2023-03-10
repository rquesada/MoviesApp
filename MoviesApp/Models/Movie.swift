//
//  Movie.swift
//  MoviesApp
//
//  Created by Roy Quesada on 8/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation


struct MovieResponse : Codable
{
    let movies:[Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

struct Movie : Codable
{
    let title:String
    let year:String
    let imdbId:String
    let poster:String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case poster = "Poster"
    }
}
