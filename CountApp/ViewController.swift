//
//  ViewController.swift
//  CountApp
//
//  Created by Life is Tech on 2017/11/03.
//  Copyright © 2017年 Life is Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus() {
        number += 1
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func minus() {
        number -= 1
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func kakeru() {
        number *= 2
        label.text = String(number)
        changeColor()
    }

    @IBAction func waru() {
        number /= 2
        label.text = String(number)
        changeColor()
    }
    
    @IBAction func changeColor() {
        if (number >= 1000) {
            label.textColor = UIColor.red
        } else if (number >= 100) {
            label.textColor = UIColor.black
        }else if(number >= 10) {
            label.textColor = UIColor.green
        } else {
            label.textColor = UIColor.orange
        }
    }

}

