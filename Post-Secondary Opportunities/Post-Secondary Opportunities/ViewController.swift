//
//  ViewController.swift
//  Post-Secondary Opportunities
//
//  Created by Jason Guo on 2018-03-05.
//  Copyright © 2018 Jason Guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var overwatch_link = "https://www.reddit.com/r/Overwatch/comments/815v6k/question_for_a_high_school_computer_science/dv16ukb/"
    @IBAction func overwatchReddit(_ sender: UIButton) {
        UIApplication.shared.open(URL(string : overwatch_link)!, options: [:], completionHandler: { (status) in
            
        })
    }
}

