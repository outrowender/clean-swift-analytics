//
//  LoginUseCaseFactoryTests.swift
//  AnalyticsCleanArchitectureTests
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation
import XCTest
@testable import AnalyticsCleanArchitecture

class LoginUseCaseFactoryTests: XCTestCase {
    
    func test_createdUseCase_hasComposedOutputs() {
        let sut = LoginUseCaseFactory()
        let usecase = sut.makeUsecase()
        let composer = usecase.output as? LoginUsecaseOutputComposer
        
        XCTAssertNotNil(composer)
        XCTAssertEqual(composer?.outputs.count, 3)
        XCTAssertEqual(composer?.outputs.filter {
            $0 is LoginPresenter
        }.count, 1)
        
        XCTAssertEqual(composer?.outputs.filter {
            $0 is CrashlyticsLoginTracker
        }.count, 1)
        
        XCTAssertEqual(composer?.outputs.filter {
            $0 is FirebaseAnalyticsLoginTracker
        }.count, 1)
    }
}
