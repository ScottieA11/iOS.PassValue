//
//  ViewController.swift
//  iOS.PassValue
//
//  Created by Raymond Ayala / K00288830 on 4/7/16.
//  Copyright © 2016 Raymond Ayala. All rights reserved.

import UIKit

class ViewController: UIViewController {
    var currentXvalue : Double = 0
    var currentYvalue : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var xslide: UISlider!
    @IBOutlet weak var yslide: UISlider!
    @IBOutlet weak var Y: UILabel!
    @IBOutlet weak var X: UILabel!
    
    //value display labels
    @IBOutlet weak var XaddY: UILabel!
    @IBOutlet weak var XsubY: UILabel!
    @IBOutlet weak var XmultiplyY: UILabel!
    
    
    // Xslide function to change value
    @IBAction func xslide(sender: UISlider) {
        currentXvalue = Double(sender.value)
        X.text = "\(currentXvalue)"
        self.doMath()
    }
    
    @IBAction func yslide(sender: UISlider) {
        currentYvalue = Double(sender.value)
        Y.text = "\(currentYvalue)"
        self.doMath()
    }
    
    func doMath() {
        
        var num1 = currentXvalue
        var num2 = currentYvalue
        
        var added = num1 + num2
        var multiplied = num1 * num2
        var subtracted = num1 - num2
        
        //set text of labels to display results
        XaddY.text = "\(added)"
        XmultiplyY.text = "\(multiplied)"
        XsubY.text = "\(subtracted)"
    }
    
}