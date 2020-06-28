//
//  ViewController.swift
//  DiscoverWord
//
//  Created by Somya on 24/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var start: UIButton!
    
    var currentPageIndex: Int = 0
    
    override func viewDidLoad() {
           super.viewDidLoad()
           scrollView.delegate = self
       }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpUI()
    }
    
    func setUpUI() {
        
        if self.currentPageIndex == 0 {
            self.topImage.image = UIImage(named: "onboard1")
            self.topLabel.text = "Find definitions for more than 1,50,000 words"
            self.start.isHidden = true
        } else if self.currentPageIndex == 1 {
            self.topImage.image = UIImage(named: "onboard2")
            self.topLabel.text = "Find out synonyms, antonyms and similar words"
            self.start.isHidden = true
        } else if self.currentPageIndex == 2 {
            self.topImage.image = UIImage(named: "onboard3")
            self.topLabel.text = "Find hierarchical information related to the word and much more"
            self.start.isHidden = false
        }
        self.topLabel.adjustsFontSizeToFitWidth = true
        self.topLabel.numberOfLines = 0
    }
    
    @IBAction func startButton(_ sender: Any) {
    }
    

}

extension ViewController:UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let pageIndex = Int(scrollView.contentOffset.x/UIScreen.main.bounds.size.width)
        self.currentPageIndex = pageIndex
        pageControl.currentPage = pageIndex
        self.setUpUI()
    }
    
}
