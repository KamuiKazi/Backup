//
//  webview.swift
//  Rock, Paper, Scissors
//
//  Created by period4 on 2/14/22.
//
import UIKit
import WebKit
class RulesView: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://thegeniusofplay.org/genius/play-ideas-tips/play-ideas/rock-paper-scissors.aspx#.Ygq3vO7MJmC")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    override func loadView() {
        let  webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
    }
}



