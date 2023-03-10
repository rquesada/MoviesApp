//
//  View+Extensions.swift
//  MoviesApp
//
//  Created by Roy Quesada on 9/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI

extension View{
    
    func embededNavigation()-> some View {
        return NavigationView{ self }
    }
}
