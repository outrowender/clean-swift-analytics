//
//  CrashlyticsLoginTracker.swift
//  AnalyticsCleanArchitecture
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation

final class CrashlyticsLoginTracker: LoginUseCaseOutput {
    func loginSucceded() {
        print("CrashlyticsLoginTracker presenter called as succeded")
        // create your model and pass to viewcontroller
    }
    
    func loginFailed() {
        print("CrashlyticsLoginTracker presenter called as failed")
        // create fail model and pass to viewcontroller
    }
}
