//
//  OnboardingConfigrator.swift
//  ChatApp
//
//  Created by mac on 04/12/2022.
//

import Foundation

// DI Layer
class OnboardingConfigurator {
    static func configure() -> OnboardingViewController {
        let viewController = OnboardingViewController()
        let presenter = OnboardingPresenterImpl(view: viewController)

        viewController.presenter = presenter
        return viewController
    }
}
