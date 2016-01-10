//
//  TapCounterViewController.swift
//  P01TapCounter
//
//  Created by vic on 9/01/2016.
//  Copyright © 2016 augusteo. All rights reserved.
//

import UIKit

class TapCounterViewController: UIViewController {
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
    
    @IBAction func resetBarButtonTapped(sender: UIBarButtonItem) {
        counter = 0
        counterLabel.text = formatter!.stringFromNumber(counter!)
    }
}
