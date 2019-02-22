//
//  ClvMainCell.swift
//  Defide_Test
//
//  Created by Lu Kien Quoc on 2/21/19.
//  Copyright © 2019 Lu Kien Quoc. All rights reserved.
//

import UIKit

class ClvMainCell: UICollectionViewCell {

    @IBOutlet weak var imv: UIImageView!
    @IBOutlet weak var vDes: UIView!
    @IBOutlet weak var lblDes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        lblDes.sizeToFit()
        vDes.frame.size.height = lblDes.frame.maxY + 5
        vDes.frame.origin.y = contentView.frame.maxY - vDes.frame.size.height
    }

    func updateCell(_ detail: DataDetail) {
        ImageStore.shared.setImg(toImageView: imv, imgURL: detail.imageLink)
        vDes.backgroundColor = UIColor(hexString: "000000", a: 0.1)
        
        let attributed = NSMutableAttributedString(string: detail.title ?? "", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14) ])
        attributed.append(NSAttributedString(string: "\n\( detail.des ?? "" )" , attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14) ]))
        lblDes.attributedText = attributed
    }

}
