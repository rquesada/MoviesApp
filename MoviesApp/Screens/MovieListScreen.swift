//
//  MovieListScreen.swift
//  MoviesApp
//
//  Created by Roy Quesada on 9/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName:String = ""
    
    init(){
        movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack{
            
            TextField("Search", text: $movieName, onEditingChanged: { _ in }, onCommit: {
                self.movieListVM.searchByName(self.movieName.trimmedAndScaped())
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            .navigationBarTitle("Movies")

            if(self.movieListVM.loadingState == .success)
            {
                MovieListView(movies: movieListVM.movies)
            }else if(self.movieListVM.loadingState == .failed){
                FailedView()
            }else if(self.movieListVM.loadingState == .loading){
                LoadingView()
            }
        }.padding().embededNavigation()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
