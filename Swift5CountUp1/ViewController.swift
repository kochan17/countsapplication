//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 石田幸太 on 2021/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "0"
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        count = count + 1
        
        countLabel.text = String(count)
        
        if count >= 10 {
            chengeTextColor()
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        count = count - 1
        
        countLabel.text = String(count)
        
        if count <= 0 {
            resetColor()
        }
    }
    
    func chengeTextColor(){
        
        countLabel.textColor = .yellow
    }
    
    func resetColor(){
        
        countLabel.textColor = .white
    }
}

