//
//  FirebaseAnalyticsLoginTracker.swift
//  AnalyticsCleanArchitecture
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation

final class FirebaseAnalyticsLoginTracker: LoginUseCaseOutput {
    func loginSucceded() {
        print("FirebaseAnalyticsLoginTracker presenter called as succeded")
        // create your model and pass to viewcontroller
    }
    
    func loginFailed() {
        print("FirebaseAnalyticsLoginTracker presenter called as failed")
        // create fail model and pass to viewcontroller
    }
}
