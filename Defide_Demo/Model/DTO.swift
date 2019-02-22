//
//  DTO.swift
//  HomeTest_Tiki
//
//  Created by Lu Kien Quoc on 2/20/19.
//  Copyright © 2019 Lu Kien Quoc. All rights reserved.
//

import Foundation
import UIKit

class ResponseData: Codable {
    var lstData: [DataDetail] = []
}

class DataDetail: Codable {
    var title: String?
    var des: String?
    var imageLink: String?
}
