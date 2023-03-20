//
//  NavigationRoute.swift
//  MyPodcasts
//
//  Created by mac on 04/12/2022.
//

import Foundation
import UIKit

enum PresentingStyle {
    case modal(modalPresentationStyle: UIModalPresentationStyle = .popover)
    case push
}
protocol Route {
    var destenation: UIViewController { get }
    var presentationStyle: PresentingStyle { get }
}

protocol NavigationRoute: AnyObject {
    func navigate(_ route: Route)
}

extension NavigationRoute where Self: UIViewController {
    func navigate(_ route: Route) {
        let viewController = route.destenation
        switch route.presentationStyle {
        case let .modal(presentingStyle):
            viewController.modalPresentationStyle = presentingStyle
            present(viewController, animated: true, completion: nil)
        case .push:
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
