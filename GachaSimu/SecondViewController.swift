//
//  SecondViewController.swift
//  GachaSimu
//
//  Created by 林田宗一郎 on 2015/05/17.
//  Copyright (c) 2015年 林田宗一郎. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var PK_Rate: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text = "3.0%"
        label3.text = "20.0%"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var list = ["アスタリア","光と闇","その他"]
    
    @IBOutlet weak var label1: UILabel!
    
    func numberOfComponentsInPickerView(pickerview1: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
            return list[row] as String
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            label1.text = list[row]
    }
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var SL_Rate5: UISlider!
    @IBAction func SliderRate5(sender: AnyObject) {
        var S5 = Double(Int(SL_Rate5.value * 100.0)) / 100.0
        label2.text = String(stringInterpolationSegment: S5) + "%"
            var US5 = NSUserDefaults.standardUserDefaults()
        US5.setDouble(S5, forKey:"5rate")
    }
    
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var SL_Rate4: UISlider!
    @IBAction func SliderRate4(sender: AnyObject) {
        var S4 = Double(Int(SL_Rate4.value * 100.0)) / 100.0
        label3.text = String(stringInterpolationSegment: S4) + "%"
        var US4 = NSUserDefaults.standardUserDefaults()
        US4.setDouble(S4, forKey:"4rate")
    }
    
}

