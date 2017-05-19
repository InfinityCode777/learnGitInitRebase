//
//  ViewController.swift
//  learnGitInitRebase
//
//  Created by Jing Wang on 5/19/17.
//  Copyright © 2017 figur8. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var showQuestionBtn: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    var colorCounter = 0
    
    let BGColorList = [UIColor.red, UIColor.green, UIColor.blue, UIColor.cyan, UIColor.magenta, UIColor.yellow, UIColor.black, UIColor.clear]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onChangeBGColor(_ sender: Any) {
        
        self.view.backgroundColor = BGColorList[0]
    }
    
    

}

