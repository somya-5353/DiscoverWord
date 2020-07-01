//
//  ViewController.swift
//  DiscoverWord
//
//  Created by Somya on 24/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var topLabelConstraint: NSLayoutConstraint!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var start: UIButton!
    
    var currentPageIndex: Int = 0
    var temp: CGFloat?
    var temp1: CGFloat?
    var count = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        scrollView.delegate = self
        self.topLabelConstraint.constant = self.topLabelConstraint.constant - self.view.center.x
        self.temp = self.topLabelConstraint.constant
    
       }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        setUpUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.topLabelConstraint.constant = self.temp ?? 0.0 - self.view.bounds.width
    }
    
    
    func setUpUI() {
        
        if self.currentPageIndex == 0 {
            self.topImage.image = UIImage(named: "onboard1")
            self.topLabel.text = "Find definitions for more than 1,50,000 words"
            self.start.isHidden = true
            self.navigationController?.navigationBar.barTintColor = self.view1.backgroundColor
        } else if self.currentPageIndex == 1 {
            self.topImage.image = UIImage(named: "onboard2")
            self.topLabel.text = "Find out synonyms, antonyms and similar words"
            self.start.isHidden = true
            self.navigationController?.navigationBar.barTintColor = self.view2.backgroundColor

        } else if self.currentPageIndex == 2 {
            self.topImage.image = UIImage(named: "onboard3")
            self.topLabel.text = "Find hierarchical information related to the word and much more"
            self.start.isHidden = false
            self.navigationController?.navigationBar.barTintColor = self.view3.backgroundColor

        }
        self.topLabel.adjustsFontSizeToFitWidth = true
        self.topLabel.numberOfLines = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        self.animateLabel()
    }
    
    @IBAction func startButton(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "dictionaryVC") as! DictionaryViewController
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem?.tintColor = UIColor.white
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func animateLabel() {
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            self.topLabelConstraint.constant = self.topLabelConstraint.constant + self.view.center.x
            self.view.layoutIfNeeded()
        }, completion: nil)
            
    }

}

extension ViewController:UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let pageIndex = Int(scrollView.contentOffset.x/375)
        self.currentPageIndex = pageIndex
        pageControl.currentPage = pageIndex
        self.setUpUI()

    }
    
}
