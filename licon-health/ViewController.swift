//
//  ViewController.swift
//  licon-health
//
//  Created by skyward on 5/10/18.
//  Copyright © 2018 skyward. All rights reserved.
//  Inspired by https://www.hackingwithswift.com/read/32/3/how-to-use-sfsafariviewcontroller-to-browse-a-web-page

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openTouchDown(_ sender: Any) {
        if let url = URL(string: "https://healthcare.gov") {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = false
            
            let svc = SFSafariViewController(url: url, configuration: config)
            
            present(svc, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

