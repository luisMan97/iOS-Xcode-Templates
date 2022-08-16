//
//  LoginModels.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import Foundation

enum Login {
    
    enum User {
        struct Request {
            let user: String
            let password: String
        }
        struct Response {
            let something: String?
        }
        struct ViewModel: Identifiable {
            let id = UUID()
            let user: String
        }
  }
    
}
