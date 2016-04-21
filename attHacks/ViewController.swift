//
//  ViewController.swift
//  attHacks
//
//  Created by Abhinav Reddy on 4/16/16.
//  Copyright © 2016 Abhinav Reddy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var relativeAmb: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var relativeVol: UILabel!
    
    
    @IBAction func valueChanged(sender: AnyObject) {
        
        
        let currValue = Int(slider.value)
        relativeVol.text = "\(currValue)" + "%"
    }
    
    
    @IBAction func randomNumber() {
        
        
        let rand = Int(arc4random_uniform(5)) + 40
        relativeAmb.text = "\(rand)" + "dB"
        
        
    }
    
    
    var timer = NSTimer()

    override func viewDidLoad() {
        
        
        scheduledTimerWithTimeInterval()
         super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        scheduledTimerWithTimeInterval()
    }
    
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function **Countdown** with the interval of 1 seconds
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("randomNumber"), userInfo: nil, repeats: true)
    }
    
    
    func updateCounting(){
        NSLog("counting..")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

