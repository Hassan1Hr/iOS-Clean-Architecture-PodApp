//
//  OnboardingCollectionViewCell.swift
//  MyPodcasts
//
//  Created by mac on 17/04/2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet private weak var slideImageView: UIImageView!
    @IBOutlet private weak var slideTitleLbl: UILabel!
    @IBOutlet private weak var slideDescriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}
