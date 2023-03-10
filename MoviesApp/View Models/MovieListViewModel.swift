//
//  MovieListViewModel.swift
//  MoviesApp
//
//  Created by Roy Quesada on 8/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

class MovieListViewModel : ViewModelBase{
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
    
    func searchByName(_ name: String){
        
        if name.isEmpty {
            return
        }
        
        self.loadingState = .loading
        
        httpClient.getMovieBy(search: name){ result in
            switch result {
            case .success(let movies):
                if let movies = movies {
                    DispatchQueue.main.async {
                        self.movies =  movies.map(MovieViewModel.init)
                        self.loadingState = .success
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.loadingState = .failed
                }
            }
        }
    }
        
}

struct MovieViewModel{
    let movie: Movie
    
    var imdbId:String{
        movie.imdbId
    }
    
    var title: String{
        movie.title
    }
    
    var poster:String{
        movie.poster
    }
    
    var year:String{
        movie.year
    }
}
