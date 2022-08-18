//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import Foundation

enum UseCaseError: Error {
    case networkError, decodingError
    
    public var localizedDescription: String {
        switch self {
        case .networkError:
            return "Verifica tu conexión a internet e intenta nuevamente."
        case .decodingError:
            return "Ha ocurrido un error, inténtalo en unos minutos."
        }
    }
}

protocol Get___VARIABLE_sceneName___UseCaseProtocol {
    func invoke(request: ___VARIABLE_sceneName___.Something.Request) async -> Result<___VARIABLE_sceneName___.Something.ViewModel, UseCaseError>
}

class Get___VARIABLE_sceneName___UseCase: Get___VARIABLE_sceneName___UseCaseProtocol {
    
    // Repository
    private var repository: ___VARIABLE_sceneName___RepositoryProtocol
    
    // MARK: - Initializers
    
    init(repository: ___VARIABLE_sceneName___RepositoryProtocol) {
        self.repository = repository
    }
    
    // MARK: - Internal Methods
    
    func invoke(request: ___VARIABLE_sceneName___.Something.Request) async -> Result<___VARIABLE_sceneName___.Something.ViewModel, UseCaseError> {
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
