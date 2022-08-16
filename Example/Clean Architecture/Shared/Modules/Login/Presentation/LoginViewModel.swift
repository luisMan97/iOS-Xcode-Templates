//
//  LoginViewModel.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import Combine

class LoginViewModel: ObservableObject {
    
    // Internal Output Events Properties
    @Published var showProgress = false
    @Published var Login: Login.User.ViewModel?
    @Published var error: String?
    
    // Internal Input Properties
    @Published var user = String()
    @Published var password = String()
    
    // Internal Properties
    var progressTitle = ""
    
    // Private Properties
    private var subscriptions: Set<AnyCancellable> = []
    
    // Interactor
    private var getLoginUseCase: GetLoginUseCaseProtocol
    
    // MARK: - Initializers
    
    init(getLoginUseCase: GetLoginUseCaseProtocol) {
        self.getLoginUseCase = getLoginUseCase
    }
    
    // MARK: - Internal Methods
    
    @MainActor
    func doSomething() async {
        progressTitle = "Cargando..."
        showProgress = true
        
        let result = await getLoginUseCase.invoke(request: .init(user: user, password: password))
        
        switch result {
        case .success(let todos):
            self.Login = todos
            showProgress = false
        case .failure(let error):
            self.error = error.localizedDescription
            showProgress = false
        }
    }

}
