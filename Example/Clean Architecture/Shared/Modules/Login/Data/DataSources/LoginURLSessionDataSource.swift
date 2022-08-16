//
//  LoginURLSessionDataSource.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import Foundation

enum APIServiceError: Error {
    case badUrl, requestError, decodingError, statusNotOK
}

class LoginURLSessionDataSource: RemoteLoginDataSource {
    
    func doSomething(request: Login.User.Request) async throws -> Login.User.ViewModel {
        await withUnsafeContinuation { continuation in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                continuation.resume(returning: .init(user: request.user))
            }
        }
        
    }
    
}
