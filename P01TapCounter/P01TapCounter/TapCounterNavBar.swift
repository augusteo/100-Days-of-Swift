//
//  TapCounterNavBar.swift
//  P01TapCounter
//
//  Created by vic on 9/01/2016.
//  Copyright © 2016 augusteo. All rights reserved.
//

import UIKit

@IBDesignable
class TapCounterNavBar: UINavigationBar {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.shadowImage = UIImage()
        self.translucent = true
    }
}
