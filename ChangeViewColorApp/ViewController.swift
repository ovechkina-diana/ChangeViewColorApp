//
//  ViewController.swift
//  ChangeViewColorApp
//
//  Created by Диана Овечкина on 11.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redCount: UILabel!
    @IBOutlet var greenCount: UILabel!
    @IBOutlet var blueCount: UILabel!
    
    @IBOutlet var mainView: UIView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 20
        mainView.backgroundColor = changeViewColor()
       
        redSlider.value = 0.3
        greenSlider.value = 0.5
        blueSlider.value = 0.7
    }
    
    @IBAction func sliderAction() {
        redCount.text = String(format: "%.1f", redSlider.value)
        greenCount.text = String(format: "%.1f", greenSlider.value)
        blueCount.text = String(format: "%.1f", blueSlider.value)
        
        mainView.backgroundColor = changeViewColor()
    }
    
    func changeViewColor() -> UIColor {
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
    
        return UIColor(red: redSliderValue,
                       green: greenSliderValue,
                       blue: blueSliderValue,
                       alpha: 1)
    }
}

