//
//  Data.swift
//  URLSessionBackgroundDownload
//
//  Created by Sam Wang on 11/4/14.
//  Copyright (c) 2014 Sam Wang. All rights reserved.
//

import Foundation

struct SessionProperties {
    static let identifier : String! = "url_session_background_download"
}

func getData() -> Array<String> {
    var data : [String] = [
        "http://www.mytabletbooksqa.com/ProductImages/test1.gif",
        "http://www.crackverbal.com/wp-content/uploads/2013/08/serial-test-take.jpg",
        "http://newsapace.com/wp-content/uploads/2014/05/Tests.jpg",
        "http://tpdb.speed2.hinet.net/test_010m.zip",
        "http://tpdb.speed2.hinet.net/test_250m.zip"
    ]
    
    return data
}