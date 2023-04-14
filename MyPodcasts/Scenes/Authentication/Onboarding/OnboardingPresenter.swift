//
//  OnboardingPresenter.swift
//  MyPodcasts
//
//  Created by mac on 04/12/2022.
//

import Foundation

protocol OnboardingPresenter {
    var  slides: [OnboardingSlide] { get }
    func nextBtnClicked()
    func updateCurrentPage(currentPage: Int)
    func openLogin()
    func openSignup()
}

class OnboardingPresenterImpl: OnboardingPresenter {
    
    private weak var onboardingView: OnboardingView?
    var slides: [OnboardingSlide] = [
        OnboardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world.", image: #imageLiteral(resourceName: "slide2")),
        OnboardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best.", image: #imageLiteral(resourceName: "slide1")),
        OnboardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image: #imageLiteral(resourceName: "slide3"))
    ]
    
    var currentPage = 0 {
        didSet {
            onboardingView?.setCurrentPage(currentPage: currentPage)
            if currentPage == slides.count - 1 {
                onboardingView?.updateNextBtnTitle(title: "Get Started")
            } else {
                onboardingView?.updateNextBtnTitle(title: "Next")
            }
        }
    }
    
    init(view: OnboardingView) {
        self.onboardingView = view
    }
    
    func updateCurrentPage(currentPage: Int) {
        self.currentPage = currentPage
    }
    
    func nextBtnClicked() {
        if currentPage == slides.count - 1 {
            onboardingView?.navigate(OnboardingRoutes.home)
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            onboardingView?.scrollToNextPage(indexPath: indexPath)
           
        }
    }
    
    func openLogin() {
       
    }
    
    func openSignup() {
        //        onboardingView?.navigate(OnboardingRoutes.signup)
        return
    }
}


