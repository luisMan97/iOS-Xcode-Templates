//
//  LoginViewModelTests.swift
//  Clean ArchitectureTests
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import XCTest
@testable import Clean_Architecture

class LoginViewModelTests: XCTestCase {

    private var viewModel: LoginViewModel!
    private var getLoginUseCase: GetLoginUseCaseMock!
    
    override func setUp() {
        getLoginUseCase = GetLoginUseCaseMock()
        viewModel = LoginViewModel(getLoginUseCase: getLoginUseCase)
    }

    func testSomething() async {
        let expectedValue = Login.User.ViewModel(something: "something")
        getLoginUseCase.executeResult = .success(expectedValue)
        await viewModel.doSomething()
        XCTAssertEqual(viewModel.Login, expectedValue)
    }
    
    func testSomethingError() async {
        getLoginUseCase.executeResult = .failure(UseCaseError.decodingError)
        await viewModel.doSomething()
        XCTAssertEqual(viewModel.error, UseCaseError.decodingError.localizedDescription)
    }

}
