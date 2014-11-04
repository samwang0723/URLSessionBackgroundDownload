//
//  ViewController.swift
//  URLSessionBackgroundDownload
//
//  Created by Sam Wang on 11/3/14.
//  Copyright (c) 2014 Sam Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var delegate = DownloadSessionDelegate.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        var data = getData()
        download(data)
    }
    
    //MARK: NSURLSession download in background
    func download(data: [String]!) {
        var configuration = NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier(SessionProperties.identifier)
        var backgroundSession = NSURLSession(configuration: configuration, delegate: self.delegate, delegateQueue: nil)
//        for stringUrl in data {
            var url = NSURLRequest(URL: NSURL(string: data[4])!)
            var downloadTask = backgroundSession.downloadTaskWithRequest(url)
            downloadTask.resume()
//        }
    }
}

