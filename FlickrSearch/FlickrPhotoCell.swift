//
//  FlickrPhotoCell.swift
//  FlickrSearch
//
//  Created by Makoto Ishihara on 2017-07-16.
//  Copyright © 2017 Makomination. All rights reserved.
//

import UIKit
class FlickrPhotoCell: UICollectionViewCell{
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Properties
    override var isSelected: Bool {
        didSet {
            imageView.layer.borderWidth = isSelected ? 2 : 0
        }
    }
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.borderColor = themeColor.cgColor
        isSelected = false
    }

}
