//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Aanya Jhaveri on 7/16/17.
//  Copyright © 2017 Aanya Jhaveri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorSquare: UIView!
    
    
    @IBAction func updateBackgroundColor() {
       
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBackgroundColor()
        colorSquare.layer.borderColor = UIColor.black.cgColor
        colorSquare.layer.borderWidth = 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
