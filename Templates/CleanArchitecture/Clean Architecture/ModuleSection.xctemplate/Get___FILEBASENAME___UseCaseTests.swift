//
//  ___FILENAME___
//  ___PROJECTNAME___Tests
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import XCTest

class Get___VARIABLE_sceneName___UseCaseTests: XCTestCase {

    private var repository: ___VARIABLE_sceneName___RepositoryMock!
    private var useCase: Get___VARIABLE_sceneName___UseCase!
    
    override func setUp() {
        repository = ___VARIABLE_sceneName___RepositoryMock()
        useCase = .init(repository: repository)
    }

    func testSomething() async {
        let expectedValue = ___VARIABLE_sceneName___.Something.ViewModel(something: "something")
        repository.somethingInputResult = expectedValue
        let response = await useCase.invoke(request: .init())
        XCTAssertEqual(response, .success(expectedValue))
    }
    
    func testSomethingError() async {
        let expectedValue = ___VARIABLE_sceneName___.Something.ViewModel(something: String())
        repository.somethingInputResult = expectedValue
        let response = await useCase.invoke(request: .init())
        XCTAssertEqual(response, .failure(UseCaseError.decodingError))
    }

}

// TODO: Move to other file
class ___VARIABLE_sceneName___RepositoryMock: ___VARIABLE_sceneName___RepositoryProtocol {
    
    var somethingInputResult: ___VARIABLE_sceneName___.Something.ViewModel = .init(something: String())
    
    private var somethingOutputResult: ___VARIABLE_sceneName___.Something.ViewModel {
        get throws { return try somethingResult() }
    }
    
    func doSomething(request: ___VARIABLE_sceneName___.Something.Request) async throws -> ___VARIABLE_sceneName___.Something.ViewModel {
        return try somethingOutputResult
    }
    
    private func somethingResult() throws -> ___VARIABLE_sceneName___.Something.ViewModel {
        if somethingInputResult.something.isEmpty {
            throw APIServiceError.decodingError
        } else {
            return somethingInputResult
        }
    }
    
}

// TODO: Move to other file
extension ___VARIABLE_sceneName___.Something.ViewModel: Equatable {
    
    static func == (lhs: ___VARIABLE_sceneName___.Something.ViewModel, rhs: ___VARIABLE_sceneName___.Something.ViewModel) -> Bool {
        lhs.something == rhs.something
    }
    
}
