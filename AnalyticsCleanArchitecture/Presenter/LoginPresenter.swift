//
//  LoginPresenter.swift
//  AnalyticsCleanArchitecture
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation

final class LoginPresenter: LoginUseCaseOutput {
    func loginSucceded() {
        print("LoginPresenter presenter called as succeded")
        // create your model and pass to viewcontroller
    }
    
    func loginFailed() {
        print("LoginPresenter presenter called as failed")
        // create fail model and pass to viewcontroller
    }
}
