//
//  RemoteLoginDataSource.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

protocol RemoteLoginDataSource {
        
    func doSomething(request: Login.User.Request) async throws -> Login.User.ViewModel
    
}
