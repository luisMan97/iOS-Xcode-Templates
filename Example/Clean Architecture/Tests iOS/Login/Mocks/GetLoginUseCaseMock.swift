//
//  GetLoginUseCaseMock.swift
//  Tests iOS
//
//  Created by Jorge Rivera on 11/08/22.
//  Copyright © 2022 DesaysCod. All rights reserved.
//

@testable import Clean_Architecture

class GetLoginUseCaseMock: GetLoginUseCaseProtocol {
    
    var executeResult: Result<Login.User.ViewModel, UseCaseError> = .success(.init(something: String()))
    
    func invoke(request: Login.User.Request) async -> Result<Login.User.ViewModel, UseCaseError> {
        return executeResult
    }
    
}
