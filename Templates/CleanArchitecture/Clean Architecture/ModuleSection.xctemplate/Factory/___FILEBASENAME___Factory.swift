//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit
import Combine

enum ___VARIABLE_sceneName___Factory {
    
    static func get___VARIABLE_sceneName___View() -> ___VARIABLE_sceneName___View {
        // DataSources
        let dataSource = ___VARIABLE_sceneName___URLSessionDataSource()
        // Repository
        let repository = ___VARIABLE_sceneName___Repository(dataSource: dataSource)
        // Interactor
        let get___VARIABLE_sceneName___UseCase = Get___VARIABLE_sceneName___UseCase(repository: repository)
        // ViewModel
        let viewModel = ___VARIABLE_sceneName___ViewModel(get___VARIABLE_sceneName___UseCase: get___VARIABLE_sceneName___UseCase)
        return ___VARIABLE_sceneName___View(viewModel: viewModel)
    }
    
    static func get___VARIABLE_sceneName___ViewController() -> ___VARIABLE_sceneName___ViewController {
        // DataSources
        let dataSource = ___VARIABLE_sceneName___URLSessionDataSource()
        // Repository
        let repository = ___VARIABLE_sceneName___Repository(dataSource: dataSource)
        // Interactor
        let get___VARIABLE_sceneName___UseCase = Get___VARIABLE_sceneName___UseCase(repository: repository)
        // ViewModel
        let viewModel = ___VARIABLE_sceneName___ViewModel(get___VARIABLE_sceneName___UseCase: get___VARIABLE_sceneName___UseCase)
        // viewController
        let viewController = ___VARIABLE_sceneName___ViewController(viewModel: viewModel)
        return viewController
    }
    
}
