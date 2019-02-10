//
//  ViewController.swift
//  BMICalculator
//
//  Created by Pasut Kittiprapas on 2/10/2562 BE.
//  Copyright © 2562 Pasut Kittiprapas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgShow: UIImageView!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    
    @IBAction func calculate(_ sender: UIButton) {
        let mHeight: Double? = Double(inputHeight.text!)
        let intWeight: Double? = Double(inputWeight.text!)
        let bmi: Double = (intWeight ?? 0)/pow((mHeight ?? 0)/100, 2)
        
        result.text = "Your BMI is \(String(describing: bmi))";
        
        switch bmi{
        case let x where x < 18.5:
            category.text = "UnderWeight"
            imgShow.image = UIImage(named: "under.PNG")
        case let x where x < 25:
            category.text = "Normal"
            imgShow.image = UIImage(named: "norm.PNG")
        case let x where x < 30:
            category.text = "Overweight"
            imgShow.image = UIImage(named: "over.PNG")
        case let x where x < 35:
            category.text = "Obese"
            imgShow.image = UIImage(named: "obese.PNG")
        case let x where x >= 35:
            category.text = "Extremely Obese"
            imgShow.image = UIImage(named: "ExtremeObese.PNG")
        default:
            category.text = "Unknown"
            imgShow.image = UIImage(named: "under.PNG")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

