//
//  PDFViewController.swift
//  hackersBooks
//
//  Created by Nacho Villaverde Montalvo on 14/7/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

class PDFViewController: UIViewController, UIWebViewDelegate {
    
    //MARK: properties
    
    var model: Book
    
    @IBOutlet weak var PDFview: UIWebView!
    
    
    
    @IBOutlet weak var actvView: UIActivityIndicatorView!
    
    //MARK: Inicialization
    
    init(model: Book){
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: sync
    
    func syncModelWithView(){
        PDFview.delegate = self
        actvView.startAnimating()
        PDFview.loadData(model.pdf!, MIMEType: "application/pdf", textEncodingName: "UTF-8", baseURL: NSURL())
    }
    
    //MARK: life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        syncModelWithView()
    }
    
    //MARK: Memory
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//MARK: - UIWebViewDelegate
    
    func webViewDidFinishLoad(webView: UIWebView) {
        //para actvview
        actvView.stopAnimating()
        //ocultar
        actvView.hidden = true
    }
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        if navigationType == .LinkClicked || navigationType == .FormSubmitted{
            return false
        }else{
            return true
        }
    }

}
