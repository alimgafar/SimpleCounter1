//
//  ViewController.swift
//  SimpleCounter1
//
//  Created by Alim S. Gafar on 8/19/18.
//  Copyright © 2018 Alim S. Gafar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var resetCountLabel: UIButton!
    
    var count:Int?
    
    @IBAction func increaseCount(_ sender: Any) {
        setCount(increase: true);
        updateDisplay(count: count!);
    }
    
    @IBAction func decreaseCount(_ sender: Any) {
        setCount(increase: false);
        updateDisplay(count: count!);
    }
    
    
    @IBAction func resetCount(_ sender: Any) {
        count = 0;
        updateDisplay(count: count!);
    }
    
    func setCount(increase: Bool) {
        if(increase) {
            count! += 1;
        } else if (count != 0) {
            count! -= 1;
        }
    }
    
    func updateDisplay(count: Int) {
        countLabel.text = "\(count)";
        if(count == 0) {
            resetCountLabel.isEnabled = false;
            resetCountLabel.isHidden = true;
        } else {
            resetCountLabel.isEnabled = true;
            resetCountLabel.isHidden = false;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        count = 0;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

