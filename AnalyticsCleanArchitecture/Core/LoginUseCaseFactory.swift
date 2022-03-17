//
//  LoginUseCaseFactory.swift
//  AnalyticsCleanArchitecture
//
//  Created by Wender Patrick on 17/03/22.
//

import Foundation

final class LoginUseCaseFactory {
    func makeUsecase() -> LoginUseCase {
        return LoginUseCase(output:
            LoginUsecaseOutputComposer(outputs: [
                LoginPresenter(),
                CrashlyticsLoginTracker(),
                FirebaseAnalyticsLoginTracker()
            ]
          )
        )
    }
}
