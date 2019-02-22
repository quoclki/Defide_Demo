//
//  ClvMainFlowLayout.swift
//  Defide_Demo
//
//  Created by Lu Kien Quoc on 2/21/19.
//  Copyright © 2019 Lu Kien Quoc. All rights reserved.
//

import Foundation
import UIKit

class ClvMainFlowLayout: UICollectionViewFlowLayout {
    
    fileprivate var cache = [UICollectionViewLayoutAttributes]()
    fileprivate var cellPadding: CGFloat = 6

    fileprivate var contentHeight: CGFloat = 0
    fileprivate var contentWidth: CGFloat = 0
    override var collectionViewContentSize: CGSize {
        return CGSize(width: contentWidth, height: contentHeight)
    }
    
    override func prepare() {
        cache.removeAll()
        guard let collectionView = collectionView else {
            return
        }
        
        // declare x, y to calculate frame of itemSize
        var x: CGFloat = 0
        var y: CGFloat = 0
        for item in 0 ..< collectionView.numberOfItems(inSection: 0) {
            let indexPath = IndexPath(item: item, section: 0)
            let mod = item % 6
            
            // calculate width for item size
            let widthScreen = UIScreen.main.bounds.width
            var width = (widthScreen - (cellPadding * 2)) / 3
            if mod == 4 {
                width = widthScreen - cellPadding - width
            }
            
            // calculate new y if x + width > withScreen
            if x + width > widthScreen {
                x = 0
                y += width + cellPadding
            }
            
            let frame = CGRect(x: x, y: y, width: width, height: width)
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            attributes.frame = frame
            
            cache.append(attributes)
            contentHeight = max(contentHeight, frame.maxY)

            // increase new x
            x += width + cellPadding
            
            // break to new cycle
            if mod == 5 {
                x = 0
                y += width + cellPadding
            }
            
        }
        
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return cache
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cache[indexPath.item]
    }
}
