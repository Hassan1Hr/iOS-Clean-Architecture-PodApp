//
//  AppDelegate.swift
//  MyPodcasts
//
//  Created by mac on 28/11/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC: OnboardingViewController = OnboardingConfigurator.configure()
        let rootNC = UINavigationController(rootViewController: rootVC)
        rootNC.navigationBar.isHidden = true
        rootNC.interactivePopGestureRecognizer?.isEnabled = false
        window?.rootViewController = rootNC
        window?.makeKeyAndVisible()

        return true
    }
}
