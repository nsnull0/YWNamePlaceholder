//
//  ViewController.swift
//  ExampleYWProfile
//
//  Created by Yoseph Wijaya on 2017/07/04.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit
import YWNamePlaceholder

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let profileName:YWNamePlaceHolder = YWNamePlaceHolder(frame: CGRect(x: 10, y: 10, width: 60, height: 60), str: "", font: UIFont.boldSystemFont(ofSize: 0), contentColor: UIColor.red, textColor: UIColor.red)
        
        
//        let profileName:YWNamePlaceHolder = YWNamePlaceHolder(frame: CGRect(x: 10,y:  10,width: 60,height: 60))
        
        self.containerView.addSubview(profileName)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

