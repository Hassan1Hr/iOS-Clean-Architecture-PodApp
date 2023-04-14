//
//  OnboardingRoutes.swift
//  MyPodcasts
//
//  Created by mac on 14/04/2023.
//

import UIKit

enum OnboardingRoutes: Route{
    case home
    
    var destenation: UIViewController{
        switch self{
        case .home:
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            let controller = storyboard.instantiateViewController(identifier: "TabBar") as! UITabBarController
            controller.modalTransitionStyle = .flipHorizontal
            return controller
        }
    }
    
    var presentationStyle: PresentingStyle{
        switch self{
        case .home:
            return .modal(modalPresentationStyle: .fullScreen)
        }
    }
    
    
}
