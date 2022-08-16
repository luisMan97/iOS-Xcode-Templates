//
//  GetLoginUseCase.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import Foundation

enum UseCaseError: Error {
    case networkError, decodingError, emptyFields(String)
    
    public var localizedDescription: String {
        switch self {
        case .networkError:
            return "Verifica tu conexión a internet e intenta nuevamente."
        case .decodingError:
            return "Ha ocurrido un error, inténtalo en unos minutos."
        case .emptyFields(let message):
            return message
        }
    }
}

protocol GetLoginUseCaseProtocol {
    func invoke(request: Login.User.Request) async -> Result<Login.User.ViewModel, UseCaseError>
}

class GetLoginUseCase: GetLoginUseCaseProtocol {
    
    // Repository
    private var repository: LoginRepositoryProtocol
    
    // MARK: - Initializers
    
    init(repository: LoginRepositoryProtocol) {
        self.repository = repository
    }
    
    // MARK: - Internal Methods
    
    func invoke(request: Login.User.Request) async -> Result<Login.User.ViewModel, UseCaseError> {
        if request.user.isEmpty || request.password.isEmpty {
            return .failure(.emptyFields("Los campos de usuario y/o contraseña son requeridos."))
        }
        do {
            let something = try await repository.doSomething(request: request)
            return .success(something)
        } catch {
            return .failure(handleError(error))
        }
    }
    
    private func handleError(_ error: Error) -> UseCaseError {
        switch(error) {
        case APIServiceError.decodingError: return .decodingError
        default: return .networkError
        }
    }

}
