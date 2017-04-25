//
//  ViewController.swift
//  Fibonacci_App
//
//  Created by Brian McMinn on 4/25/17.
//  Copyright © 2017 Brian McMinn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    
    @IBOutlet weak var textView: UITextView!

    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    @IBAction func updateFibonacciSequence() {
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: Int(numberOfItemsSlider.value), includesZero: includesZeroSwitch.isOn)
        textView.text = fibonacciSequence.values.description
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

