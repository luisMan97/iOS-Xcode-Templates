//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import Combine

class ___VARIABLE_sceneName___ViewModel: ObservableObject {
    
    // Internal Output Events Properties
    @Published var showProgress = false
    @Published var ___VARIABLE_sceneName___: ___VARIABLE_sceneName___.Something.ViewModel?
    @Published var error = String()
    
    // Internal Properties
    var progressTitle = ""
    
    // Private Properties
    private var subscriptions: Set<AnyCancellable> = []
    
    // Interactor
    private var get___VARIABLE_sceneName___UseCase: Get___VARIABLE_sceneName___UseCaseProtocol
    
    // MARK: - Initializers
    
    init(get___VARIABLE_sceneName___UseCase: Get___VARIABLE_sceneName___UseCaseProtocol) {
        self.get___VARIABLE_sceneName___UseCase = get___VARIABLE_sceneName___UseCase
    }
    
    // MARK: - Internal Methods
    
    @MainActor
    func doSomething() async {
        progressTitle = "Cargando..."
        showProgress = true
        
        let result = await get___VARIABLE_sceneName___UseCase.invoke(request: .init())
        
        switch result {
        case .success(let todos):
            self.___VARIABLE_sceneName___ = todos
            showProgress = false
        case .failure(let error):
            self.error = error.localizedDescription
            showProgress = false
        }
    }

}
