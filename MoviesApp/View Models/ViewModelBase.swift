//
//  ViewModelBase.swift
//  MoviesApp
//
//  Created by Roy Quesada on 9/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
