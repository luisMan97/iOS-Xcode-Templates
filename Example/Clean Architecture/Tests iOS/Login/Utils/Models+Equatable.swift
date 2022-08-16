//
//  Models+Equatable.swift
//  Tests iOS
//
//  Created by Jorge Rivera on 11/08/22.
//  Copyright © 2022 DesaysCod. All rights reserved.
//

@testable import Clean_Architecture

extension Login.User.ViewModel: Equatable {
    
    static func == (lhs: Login.User.ViewModel, rhs: Login.User.ViewModel) -> Bool {
        lhs.something == rhs.something
    }
    
}
