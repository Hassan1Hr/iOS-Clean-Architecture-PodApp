//
//  OnboardingView.swift
//  MyPodcasts
//
//  Created by mac on 04/12/2022.
//

import UIKit

protocol OnboardingView: NavigationRoute {
    func updateNextBtnTitle(title: String)
    func setCurrentPage(currentPage: Int)
    func scrollToNextPage(indexPath: IndexPath)
}

class OnboardingViewController: UIViewController {
    var presenter: OnboardingPresenter!

    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var nextBtn: UIButton!
    @IBOutlet private weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerOnboardingCollectionViewCell()
        // Do any additional setup after loading the view.
    }

    private func registerOnboardingCollectionViewCell() {
        let nibfile = UINib(nibName: OnboardingCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nibfile, forCellWithReuseIdentifier: OnboardingCollectionViewCell.identifier)
    }
    @IBAction private func nextBtnClicked(_ sender: Any) {
        presenter.nextBtnClicked()
    }
    
}

extension OnboardingViewController: OnboardingView {
    func scrollToNextPage(indexPath: IndexPath) {
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    func setCurrentPage(currentPage: Int) {
        pageControl.currentPage = currentPage
    }
    
    func updateNextBtnTitle(title: String) {
        nextBtn.setTitle(title, for: .normal)
    }
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: OnboardingCollectionViewCell.identifier,
            for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(presenter.slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        presenter.updateCurrentPage(currentPage: Int(scrollView.contentOffset.x / width)) 
    }
}
