//
//  StringExtensions.swift
//  Clean Architecture (iOS)
//
//  Created by Jorge Rivera on 15/08/22.
//  Copyright © 2022 DesaysCod. All rights reserved.
//

import Foundation

extension String: Identifiable {
    public typealias ID = Int
    public var id: Int {
        return hash
    }
}
