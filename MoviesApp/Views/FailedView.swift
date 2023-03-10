//
//  FailedView.swift
//  MoviesApp
//
//  Created by Roy Quesada on 9/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct FailedView: View {
    var body: some View {
        Image("oops")
    }
}

struct FailedView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .center){
            FailedView()
        }
        
    }
}
