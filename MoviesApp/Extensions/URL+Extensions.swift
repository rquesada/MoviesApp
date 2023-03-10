//
//  URL+Extensions.swift
//  MoviesApp
//
//  Created by Roy Quesada on 8/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation


extension URL{
    
    static func forMoviesByName(_ name: String) -> URL?{
        return URL(string: "https://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
    
    static func forMoviesByImdbId(_ imdbId:String) -> URL?{
        return URL(string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
    }
}
