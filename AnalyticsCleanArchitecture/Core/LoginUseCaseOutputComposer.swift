//
//  LoginUseCaseDelegator.swift
//  AnalyticsCleanArchitecture
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation
final class LoginUsecaseOutputComposer: LoginUseCaseOutput {
    let outputs: [LoginUseCaseOutput]
    
    init(outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }
    
    func loginSucceded() {
        outputs.forEach { $0.loginSucceded()}
    }
    
    func loginFailed() {
        outputs.forEach { $0.loginFailed()}
    }
    
}
