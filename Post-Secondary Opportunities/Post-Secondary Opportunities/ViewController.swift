//
//  ViewController.swift
//  Post-Secondary Opportunities
//
//  Created by Jason Guo on 2018-03-05.
//  Copyright © 2018 Jason Guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var linkButtons: [UIButton]!
    
    var links = ["https://goo.gl/9xveRv", "https://goo.gl/7p3Xo5", "https://goo.gl/bg7Ei8", "https://goo.gl/xq1E7c", "https://goo.gl/Qxpj4X"]
    //var overwatch_link = "https://www.reddit.com/r/Overwatch/comments/815v6k/question_for_a_high_school_computer_science/dv16ukb/"
    
    @IBAction func openLink(_ sender: UIButton) {
        if let linkNumber = linkButtons.index(of: sender) {
            UIApplication.shared.open(URL(string : links[linkNumber])!, options: [:], completionHandler: { (status) in
                
            })
            
        } else {
            print("The button pressed is not in linkButtons")
        
        }
        
        }
}

