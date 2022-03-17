//
//  LoginUseCase.swift
//  AnalyticsCleanArchitecture
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation

protocol LoginUseCaseOutput{
    func loginSucceded()
    func loginFailed()
}

final class LoginUseCase {
    
    let output: LoginUseCaseOutput
    
    init(output: LoginUseCaseOutput) {
        self.output = output
    }
    
    func login(name: String, password: String){
        if("success" == "success") {
            output.loginSucceded()
        }else{
            output.loginFailed()
        }
    }
}
