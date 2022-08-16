//
//  LoginRepositoryMock.swift
//  Tests iOS
//
//  Created by Jorge Rivera on 11/08/22.
//  Copyright © 2022 DesaysCod. All rights reserved.
//

@testable import Clean_Architecture

class LoginRepositoryMock: LoginRepositoryProtocol {
    
    var somethingInputResult: Login.User.ViewModel = .init(something: String())
    
    var somethingOutputResult: Login.User.ViewModel {
        get throws { return try somethingResult() }
    }
    
    func doSomething(request: Login.User.Request) async throws -> Login.User.ViewModel {
        return try somethingOutputResult
    }
    
    func somethingResult() throws -> Login.User.ViewModel {
        if somethingInputResult.something.isEmpty {
            throw APIServiceError.decodingError
        } else {
            return somethingInputResult
        }
    }
    
}
