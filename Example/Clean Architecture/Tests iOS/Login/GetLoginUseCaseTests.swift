//
//  GetLoginUseCaseTests.swift
//  Clean ArchitectureTests
//
//  Created by Jorge Luis Rivera Ladino on 11/08/22.
//  Copyright (c) 2022 DesaysCod All rights reserved.
//

import XCTest
@testable import Clean_Architecture

class GetLoginUseCaseTests: XCTestCase {

    private var repository: LoginRepositoryMock!
    private var useCase: GetLoginUseCase!
    
    override func setUp() {
        repository = LoginRepositoryMock()
        useCase = .init(repository: repository)
    }

    func testSomething() async {
        let expectedValue = Login.User.ViewModel(something: "something")
        repository.somethingInputResult = expectedValue
        let response = await useCase.invoke(request: .init())
        XCTAssertEqual(response, .success(expectedValue))
    }
    
    func testSomethingError() async {
        let expectedValue = Login.User.ViewModel(something: String())
        repository.somethingInputResult = expectedValue
        let response = await useCase.invoke(request: .init())
        XCTAssertEqual(response, .failure(UseCaseError.decodingError))
    }

}
