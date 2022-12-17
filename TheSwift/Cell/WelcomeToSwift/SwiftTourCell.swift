//
//  SwiftTourCell.swift
//  TheSwift
//
//  Created by Steve on 2022/12/18.
//

import UIKit

class SwiftTourCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 16
    }
    
    func configure(_ item: SwiftTour) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
    }
}
