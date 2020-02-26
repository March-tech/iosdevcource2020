//
//  ViewController.swift
//  ScrollView
//
//  Created by Marta on 2/14/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("===================")
    }
}

