//
//  FirstViewController.swift
//  GachaSimu
//
//  Created by 林田宗一郎 on 2015/05/17.
//  Copyright (c) 2015年 林田宗一郎. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var label1: UILabel!
    @IBAction func TestBt(sender: AnyObject) {
        var US = NSUserDefaults.standardUserDefaults()
        var S:Double = US.doubleForKey("5rate")
        label1.text = String(stringInterpolationSegment: S)
    }
}
