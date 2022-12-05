//
//  OnboardingPresenter.swift
//  ChatApp
//
//  Created by mac on 04/12/2022.
//

import Foundation

protocol OnboardingPresenter {
    func openLogin()
    func openSignup()
}

class OnboardingPresenterImpl: OnboardingPresenter {
    
    let onboardingView: OnboardingView
    
    init(view: OnboardingView) {
        self.onboardingView = view
    }
    
    func openLogin() {
//        onboardingView?.navigate(OnboardingRoutes.login)
    }
    
    func openSignup() {
        //        onboardingView?.navigate(OnboardingRoutes.signup)
        return
    }
}
