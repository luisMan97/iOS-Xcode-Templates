//
//  LoginViewController.swift
//  Clean Architecture
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import UIKit
import Combine

class LoginViewController: UIViewController {
    
    // MARK: - Private Properties
    
    private var viewModel: LoginViewModel
    private var subscriptions: Set<AnyCancellable> = []
    
    // MARK: - Initializers
    
    init(viewModel: LoginViewModel) {
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
            print(error ?? "")
        }.store(in: &subscriptions)
    }
    
}
