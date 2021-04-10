//
//  RedCell.swift
//  Bidirectional Layout
//
//  Created by Alexsandre kikalia on 12/22/20.
//

import UIKit

class RedCell: UITableViewCell {

    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.backgroundColor = .init(displayP3Red: 236/255, green: 76/255, blue: 60/255, alpha: 1)
        contentView.frame = contentView.frame.inset(by: .init(top: 8, left: 16, bottom: 8, right: 16))
        contentView.layer.cornerRadius = 10
        contentView.clipsToBounds = true
    }
    
}
