//
//  ___FILENAME___
//  ___PROJECTNAME___Tests
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import XCTest

class ___VARIABLE_sceneName___ViewModelTests: XCTestCase {

    private var viewModel: ___VARIABLE_sceneName___ViewModel!
    private var get___VARIABLE_sceneName___UseCase: Get___VARIABLE_sceneName___UseCaseMock!
    
    override func setUp() {
        get___VARIABLE_sceneName___UseCase = Get___VARIABLE_sceneName___UseCaseMock()
        viewModel = ___VARIABLE_sceneName___ViewModel(get___VARIABLE_sceneName___UseCase: get___VARIABLE_sceneName___UseCase)
    }

    func testSomething() async {
        let expectedValue = ___VARIABLE_sceneName___.Something.ViewModel(something: "something")
        get___VARIABLE_sceneName___UseCase.executeResult = .success(expectedValue)
        await viewModel.doSomething()
        XCTAssertEqual(viewModel.___VARIABLE_sceneName___, expectedValue)
    }
    
    func testSomethingError() async {
        get___VARIABLE_sceneName___UseCase.executeResult = .failure(UseCaseError.decodingError)
        await viewModel.doSomething()
        XCTAssertEqual(viewModel.error, UseCaseError.decodingError.localizedDescription)
    }

}

// TODO: Move to other file
class Get___VARIABLE_sceneName___UseCaseMock: Get___VARIABLE_sceneName___UseCaseProtocol {
    
    var executeResult: Result<___VARIABLE_sceneName___.Something.ViewModel, UseCaseError> = .success(.init(something: String()))
    
    func invoke(request: ___VARIABLE_sceneName___.Something.Request) async -> Result<___VARIABLE_sceneName___.Something.ViewModel, UseCaseError> {
        return executeResult
    }
    
}
