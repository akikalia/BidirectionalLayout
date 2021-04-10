//
//  YellowCell.swift
//  Bidirectional Layout
//
//  Created by Alexsandre kikalia on 12/22/20.
//

import UIKit

class YellowCollectionCell: UITableViewCell {
    
    

    @IBOutlet var collectionView : UICollectionView!
    
    lazy var flowLayout: UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        return flowLayout
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = flowLayout
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(
            UINib(nibName: "YellowCell", bundle: nil),
            forCellWithReuseIdentifier: "YellowCell"
        )
    }
    
}


extension YellowCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "YellowCell", for: indexPath)
        return cell
    }
    
}


extension YellowCollectionCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        return UIEdgeInsets(top: Constants.Insets.top, left: Constants.Insets.left, bottom: Constants.Insets.bottom, right: Constants.Insets.right)
    }
    

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
    ) -> CGFloat {
        return Constants.spacing
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        return Constants.spacing
    }
    
    func collectionView(
        _ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath ) -> CGSize {


        let ySafeSpace = collectionView.frame.height - Constants.Insets.top - Constants.Insets.bottom - Constants.spacing
        let xSafeSpace = collectionView.frame.width - Constants.Insets.left - Constants.Insets.right - Constants.spacing * (Constants.numCols-1)
        
        if (indexPath.row + 1) % 4 < 2{
            return CGSize(width: xSafeSpace / 5, height: ySafeSpace * Constants.item1HeightRatio)
        }
        return CGSize(width: xSafeSpace / 5, height: ySafeSpace * Constants.item2HeightRatio)
    }

    
}

extension YellowCollectionCell {
    
    struct Constants {
        static let numCols : CGFloat = 5
        static let spacing: CGFloat = 7
        static let item1HeightRatio: CGFloat = 0.7
        static let item2HeightRatio: CGFloat = 0.3
        struct Insets {
            static let top : CGFloat = 8
            static let bottom : CGFloat = 8
            static let left : CGFloat = 16
            static let right : CGFloat = 16
        }
    }
}
