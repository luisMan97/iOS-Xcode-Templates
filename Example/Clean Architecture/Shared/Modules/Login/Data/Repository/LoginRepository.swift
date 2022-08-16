//
//  LoginRepository.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

protocol LoginRepositoryProtocol {
    func doSomething(request: Login.User.Request) async throws -> Login.User.ViewModel
}

class LoginRepository: LoginRepositoryProtocol {
    
    private var dataSource: RemoteLoginDataSource
    
    init(dataSource: RemoteLoginDataSource) {
        self.dataSource = dataSource
    }
    
    func doSomething(request: Login.User.Request) async throws -> Login.User.ViewModel {
        return try await dataSource.doSomething(request: request)
    }
    
}
