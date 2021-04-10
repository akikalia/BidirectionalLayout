//
//  YellowCell.swift
//  Bidirectional Layout
//
//  Created by Alexsandre kikalia on 12/24/20.
//

import UIKit

class YellowCell: UICollectionViewCell {

    override class func awakeFromNib() {
        super.awakeFromNib()

    }
    override func layoutSubviews() {
        contentView.backgroundColor = .init(displayP3Red: 246/255, green: 204/255, blue: 68/255, alpha: 1)
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
    }
}
