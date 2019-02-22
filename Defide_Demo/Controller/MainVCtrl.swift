//
//  MainVCtrl.swift
//  Defide_Test
//
//  Created by Lu Kien Quoc on 2/21/19.
//  Copyright © 2019 Lu Kien Quoc. All rights reserved.
//

import UIKit

class MainVCtrl: UIViewController {

    // MARK: - Outlet
    @IBOutlet weak var clvMain: UICollectionView!
    
    // MARK: - Properties
    private var cellID: String = "clvMainCellID"
    
    var response: ResponseData = ResponseData()
    
    var lstData: [DataDetail] {
        return response.lstData
    }

    // MARK: - Init
    
    // MARK: - UIViewController func
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initCollectionView()
        loadData()
    }
    
    // MARK: - Layout UI
    
    // MARK: - Event Listerner
    
    // MARK: - Event Handler
    @IBAction func btnReload_Touched(_ sender: UIButton) {
        loadData()
    }
    
    // MARK: - Func
    func loadData() {
        Service.callTiki({
            self.view.showLoadingView($0)
            
        }) { (response) in
            self.response = response ?? self.genTempData()
            self.clvMain.reloadData()
        }
        
    }
    
    func genTempData() -> ResponseData {
        let response = ResponseData()
        
        var data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment Description"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)

        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment Description / Comment Description / Comment Description / Comment Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment Description / Comment Description / Comment Description "
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment commentDescription / Comment Description / Comment Description / Comment Description / Comment "
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment Description / Comment Description / Comment Description / Comment Description / Comment Description / Comment Description / Comment Description / Comment Description / Comment "
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/65/af/4a/cf7f612a16299f2dc4c53d0c57569d2a.jpg"
        response.lstData.append(data)
        
        data = DataDetail()
        data.title = "Title / Filename"
        data.des = "Description / Comment"
        data.imageLink = "https://tee.tikicdn.com/cache/w300/ts/product/40/eb/13/01a9a0e54494724c5036e69d9f42ca0d.jpg"
        response.lstData.append(data)
        
        return response
    }


}

extension MainVCtrl: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func initCollectionView() {
        clvMain.register(UINib(nibName: String(describing: ClvMainCell.self), bundle: Bundle(for: type(of: self))), forCellWithReuseIdentifier: cellID)
        clvMain.dataSource = self
        clvMain.delegate = self
        clvMain.backgroundColor = .gray
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lstData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? ClvMainCell {
            let detail = lstData[indexPath.row]
            cell.updateCell(detail)
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detail = lstData[indexPath.row]
        present(DetailVCtrl(detail), animated: true, completion: nil)

    }
}
