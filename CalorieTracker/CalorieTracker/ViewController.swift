//
//  ViewController.swift
//  CalorieTracker
//
//  Created by Richard Cho on 1/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var targetAmount: UITextField!
    @IBOutlet weak var mealAmount: UITextField!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var goalStatus: UILabel!
    @IBOutlet weak var counter: UILabel!
    
    @IBAction func setTarget(_ sender: UITextField) {
        let target = Float(targetAmount.text!)
        
        progressBar.setProgress(progressBar.progress, animated: true)
        
        if Int(progressBar.progress) == 1 {
            goalStatus.text! = "Dail Goal Status: met!"
        }
        else {
            goalStatus.text! = "Daily Goal Status: not met"
        }
    }
    @IBAction func addProgress(_ sender: UIButton) {
        let meal = Float(mealAmount.text!)
        let target = Float(targetAmount.text!)
        
        progressBar.setProgress(((progressBar.progress * target!) + meal!) / target!, animated: true)
        
        counter.text! = "Total Calories:  \(progressBar.progress * target!)"
        
        if Int(progressBar.progress) == 1 {
            goalStatus.text! = "Dail Goal Status: met!"
        }
        else {
            goalStatus.text! = "Daily Goal Status: not met"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

