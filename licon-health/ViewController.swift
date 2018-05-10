//
//  ViewController.swift
//  licon-health
//
//  Created by skyward on 5/10/18.
//  Copyright © 2018 skyward. All rights reserved.
//  Inspired by https://www.hackingwithswift.com/read/32/3/how-to-use-sfsafariviewcontroller-to-browse-a-web-page

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://healthcare.gov")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        webView.evaluateJavaScript("$(document.body).hide()", completionHandler: nil)
    }

    override func loadView() {
        webView = WKWebView()
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view = webView
    }
    
    @IBAction func openTouchDown(_ sender: Any) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

