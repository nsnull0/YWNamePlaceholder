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
    
    lazy var nameList:[String] = ["Yoseph Wijaya", "Hello world", "seol hyun", "Kucing Meong", "permen Mint", "boom hello world", "long long long long Name"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "namePlaceHolderList")
        
        cell!.textLabel!.text = nameList[indexPath.row]
        cell!.accessoryView = YWNamePlaceHolder(originLocation: CGPoint(x: 0, y: 0), _withSize: 50, _yourPlaceholder: nameList[indexPath.row], _fontPlaceHolder: UIFont.boldSystemFont(ofSize: 14.0))
        
        return cell!
        
    }
    
}

