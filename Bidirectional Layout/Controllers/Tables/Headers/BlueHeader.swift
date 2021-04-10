//
//  BlueCell.swift
//  Bidirectional Layout
//
//  Created by Alexsandre kikalia on 12/22/20.
//

import UIKit

class BlueHeader: UITableViewHeaderFooterView {
    @IBOutlet var wrapperView: UIView!
    
    @IBOutlet var leftView: UIView!
    @IBOutlet var rightView: UIView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        wrapperView.frame = wrapperView.frame.inset(by: .init(top: 10, left: 10, bottom: 10, right: 10))
        setLook(currView: leftView)
        setLook(currView: rightView)
    }
    
    private func setLook(currView: UIView){
        currView.frame = currView.frame.inset(by: .init(top: 10, left: 10, bottom: 10, right: 10))
        currView.backgroundColor = .blue
        currView.layer.cornerRadius = 10
        currView.clipsToBounds = true
    }
    
}
