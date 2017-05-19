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
    var colorChagneTimer = Timer()
    
    
    let BGColorList = [UIColor.red, UIColor.green, UIColor.blue, UIColor.cyan, UIColor.magenta, UIColor.yellow, UIColor.black, UIColor.white]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorChagneTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(rotateBGColor), userInfo: nil, repeats: true)
        colorChagneTimer.invalidate()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onChangeBGColor(_ sender: Any) {
        if colorChagneTimer.isValid == true {
            colorChagneTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(rotateBGColor), userInfo: nil, repeats: true)
        } else {
            colorChagneTimer.invalidate()
        }

    }
    
    
    func rotateBGColor () {
        // Change background color automatically!
        
        self.view.backgroundColor = BGColorList[colorCounter]
        
        colorCounter = colorCounter + 1
        
        if colorCounter >= BGColorList.count {
            colorCounter = 0
        }
        
    }
    
    

}

