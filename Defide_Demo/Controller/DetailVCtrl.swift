//
//  DetailVCtrl.swift
//  Defide_Demo
//
//  Created by Lu Kien Quoc on 2/22/19.
//  Copyright © 2019 Lu Kien Quoc. All rights reserved.
//

import UIKit

class DetailVCtrl: UIViewController {

    @IBOutlet weak var imv: UIImageView!
    
    private var detail: DataDetail = DataDetail()
    
    init(_ detail: DataDetail) {
        super.init(nibName: String(describing: type(of: self)), bundle: Bundle(for: type(of: self)))
        self.detail = detail
        self.modalPresentationStyle = .fullScreen
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        imv.frame.size.height = imv.frame.size.width
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ImageStore.shared.setImg(toImageView: imv, imgURL: self.detail.imageLink)
        
    }

    @IBAction func btnClose_Touched(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
