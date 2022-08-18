//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit
import Combine

class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private var viewModel: ___VARIABLE_sceneName___ViewModel
    private var subscriptions: Set<AnyCancellable> = []
    
    // MARK: - Initializers
    
    init(viewModel: ___VARIABLE_sceneName___ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle ViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
        setupSubscribers()
    }
    
    // MARK: - Private Methods
    
    private func doSomething() {
        Task { await viewModel.doSomething() }
    }
    
    private func setupSubscribers() {
        viewModel.$showProgress.sink { showProgress in
            print(showProgress)
        }.store(in: &subscriptions)
        
        viewModel.$error.sink { error in
            print(error)
        }.store(in: &subscriptions)
    }
    
}
