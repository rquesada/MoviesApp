//
//  String+Extensions.swift
//  MoviesApp
//
//  Created by Roy Quesada on 9/3/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

extension String {
    func trimmedAndScaped()-> String {
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString
            .addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
