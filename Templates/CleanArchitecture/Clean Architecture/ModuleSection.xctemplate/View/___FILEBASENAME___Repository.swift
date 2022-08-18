//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

protocol ___VARIABLE_sceneName___RepositoryProtocol {
    func doSomething(request: ___VARIABLE_sceneName___.Something.Request) async throws -> ___VARIABLE_sceneName___.Something.ViewModel
}

class ___VARIABLE_sceneName___Repository: ___VARIABLE_sceneName___RepositoryProtocol {
    
    private var dataSource: Remote___VARIABLE_sceneName___DataSource
    
    init(dataSource: Remote___VARIABLE_sceneName___DataSource) {
        self.dataSource = dataSource
    }
    
    func doSomething(request: ___VARIABLE_sceneName___.Something.Request) async throws -> ___VARIABLE_sceneName___.Something.ViewModel {
        return try await dataSource.doSomething(request: request)
    }
    
}
