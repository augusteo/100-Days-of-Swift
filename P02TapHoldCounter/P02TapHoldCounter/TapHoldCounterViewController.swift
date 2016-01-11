//
//  TapHoldCounterViewController.swift
//  P02TapHoldCounter
//
//  Created by vic on 11/01/2016.
//  Copyright © 2016 augusteo. All rights reserved.
//

import UIKit

class TapHoldCounterViewController: UIViewController {
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var resetBarButton: UIBarButtonItem!
    
    var counter: Int?
    var formatter: NSNumberFormatter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0
        formatter = NSNumberFormatter()
        formatter!.numberStyle = .NoStyle
    }
    @IBAction func tapButtonTapped(sender: UIButton) {
        counterLabel.text = formatter!.stringFromNumber(++counter!)
    }
    
    @IBAction func tapButtonDragged(sender: UIButton) {
        counterLabel.text = formatter!.stringFromNumber(++counter!)
    }
    
    @IBAction func resetBarButtonTapped(sender: UIBarButtonItem) {
        counter = 0
        counterLabel.text = formatter!.stringFromNumber(counter!)
    }
}
