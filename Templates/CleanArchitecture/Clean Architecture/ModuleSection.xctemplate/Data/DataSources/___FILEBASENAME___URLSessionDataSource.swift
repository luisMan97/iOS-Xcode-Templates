//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

enum APIServiceError: Error {
    case badUrl, requestError, decodingError, statusNotOK
}

class ___VARIABLE_sceneName___URLSessionDataSource: Remote___VARIABLE_sceneName___DataSource {
    
    func doSomething(request: ___VARIABLE_sceneName___.Something.Request) async throws -> ___VARIABLE_sceneName___.Something.ViewModel {
        return ___VARIABLE_sceneName___.Something.ViewModel(something: "something")
    }
    
}
