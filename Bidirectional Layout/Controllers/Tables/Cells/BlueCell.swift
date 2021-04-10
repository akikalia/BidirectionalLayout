//
//  BlueCell.swift
//  Bidirectional Layout
//
//  Created by Alexsandre kikalia on 12/24/20.
//

import UIKit

class BlueCell: UITableViewCell {
    @IBOutlet var leftView: UIView!
    @IBOutlet var rightView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: .init(top: 16, left: 16, bottom: 8, right: 16))
        setLook(currView: leftView)
        setLook(currView: rightView)
        
    }
    private func setLook(currView: UIView){
//        currView.frame = currView.frame.inset(by: .init(top: 10, left: 10, bottom: 10, right: 10))
        currView.backgroundColor = .init(displayP3Red: 116/255, green: 197/255, blue: 244/255, alpha: 1)
        currView.layer.cornerRadius = 10
        currView.clipsToBounds = true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
