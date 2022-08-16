//
//  LoginFactory.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import UIKit
import Combine

enum LoginFactory {
    
    static func getLoginView() -> LoginView {
        // DataSources
        let dataSource = LoginURLSessionDataSource()
        // Repository
        let repository = LoginRepository(dataSource: dataSource)
        // Interactor
        let getLoginUseCase = GetLoginUseCase(repository: repository)
        // ViewModel
        let viewModel = LoginViewModel(getLoginUseCase: getLoginUseCase)
        return LoginView(viewModel: viewModel)
    }
    
    static func getLoginViewController() -> LoginViewController {
        // DataSources
        let dataSource = LoginURLSessionDataSource()
        // Repository
        let repository = LoginRepository(dataSource: dataSource)
        // Interactor
        let getLoginUseCase = GetLoginUseCase(repository: repository)
        // ViewModel
        let viewModel = LoginViewModel(getLoginUseCase: getLoginUseCase)
        // viewController
        let viewController = LoginViewController(viewModel: viewModel)
        return viewController
    }
    
}
