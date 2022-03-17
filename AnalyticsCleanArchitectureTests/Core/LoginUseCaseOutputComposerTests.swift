//
//  LoginUsecaseComposeDelegate.swift
//  AnalyticsCleanArchitectureTests
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation
import XCTest
@testable import AnalyticsCleanArchitecture

class LoginUsecaseOutputComposerTests: XCTestCase {
    
    func test_composingZeroOutputs_doesNotCrash(){
        let sut = LoginUsecaseOutputComposer(outputs: [])
        
        sut.loginSucceded()
        sut.loginFailed()
    }
    
    func test_composingOutputs_delegatesSuccededMessage(){
        let output1 = LoginUseCaseOutputSpy()
        let output2 = LoginUseCaseOutputSpy()
        let sut = LoginUsecaseOutputComposer(outputs: [output1, output2])
        
        sut.loginSucceded()
        
        XCTAssertEqual(output1.successCount, 1)
        XCTAssertEqual(output2.successCount, 1)
    }
    
    func test_composingOutputs_delegatesFailMessage(){
        let output1 = LoginUseCaseOutputSpy()
        let sut = LoginUsecaseOutputComposer(outputs: [output1])
        
        sut.loginFailed()
        
        XCTAssertEqual(output1.successCount, 0)
        XCTAssertEqual(output1.failCount, 1)
    }
}

private class LoginUseCaseOutputSpy: LoginUseCaseOutput {
    var successCount = 0
    var failCount = 0
    
    func loginSucceded() {
        successCount += 1
    }
    
    func loginFailed() {
        failCount += 1
    }
}
