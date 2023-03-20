//
//  OnboardingView.swift
//  MyPodcasts
//
//  Created by mac on 04/12/2022.
//

import UIKit

protocol OnboardingView {
    
}

class OnboardingViewController: UIViewController {
    var presenter: OnboardingPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

}

extension OnboardingViewController: OnboardingView {
    
}
