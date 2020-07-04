//
//  DictionaryViewController.swift
//  DiscoverWord
//
//  Created by Somya on 28/06/20.
//  Copyright © 2020 Somya. All rights reserved.
//

import UIKit

class DictionaryViewController: UIViewController {

    @IBOutlet weak var definitionButton: UIButton!
    @IBOutlet weak var synonymButton: UIButton!
    @IBOutlet weak var miscellaneousButton: UIButton!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
   // var dp = DataProvider()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        setUpUI()
       // dp.getData(category: "words", word: "temple")
        
    }
    
    func setUpUI() {
        
        self.navigationItem.title = "Discover  Words"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white,NSAttributedString.Key.font:UIFont(name: "Marker Felt", size: 23)!]
        self.definitionButton.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.miscellaneousButton.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.synonymButton.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.synonymButton.titleLabel?.textColor = UIColor.gray
        self.definitionButton.titleLabel?.textColor = UIColor.white
        self.miscellaneousButton.titleLabel?.textColor = UIColor.gray
        self.view1.backgroundColor = UIColor.white
        self.view2.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.view3.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
    }
    
    @IBAction func onTapMiscellaneous(_ sender: Any) {
        
        self.view3.backgroundColor = UIColor.white
        self.view2.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.view1.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.synonymButton.titleLabel?.textColor = UIColor.gray
        self.definitionButton.titleLabel?.textColor = UIColor.gray
        self.miscellaneousButton.titleLabel?.textColor = UIColor.white
    }
    
    @IBAction func onTapDefinition(_ sender: Any) {
        
        self.view1.backgroundColor = UIColor.white
        self.view2.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.view3.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.synonymButton.titleLabel?.textColor = UIColor.gray
        self.definitionButton.titleLabel?.textColor = UIColor.white
        self.miscellaneousButton.titleLabel?.textColor = UIColor.gray
    }
    
    @IBAction func onTapSynonym(_ sender: Any) {
        
        self.view2.backgroundColor = UIColor.white
        self.view1.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.view3.backgroundColor = UIColor(red: 0, green: 0, blue: 128/255, alpha: 1)
        self.synonymButton.titleLabel?.textColor = UIColor.white
        self.definitionButton.titleLabel?.textColor = UIColor.gray
        self.miscellaneousButton.titleLabel?.textColor = UIColor.gray
    }
}
