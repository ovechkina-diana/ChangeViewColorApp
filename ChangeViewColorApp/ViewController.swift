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
       
        redSlider.value = 0.3
        greenSlider.value = 0.5
        blueSlider.value = 0.7
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        
    }
   
    @IBAction func redSliderAction() {
        redCount.text = String(format: "%.1f", redSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: redSliderValue)
    }
    
    @IBAction func greenSliderAction() {
        greenCount.text = String(format: "%.1f",greenSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: greenSliderValue)
    }
    
    @IBAction func blueSliderAction() {
        blueCount.text = String(format: "%.1f",blueSlider.value)
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        mainView.backgroundColor = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: blueSliderValue)
    }
    
}

