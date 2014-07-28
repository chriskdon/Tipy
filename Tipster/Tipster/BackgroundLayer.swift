//
//  BackgroundLayer.swift
//  Tipster
//
//  Created by Chris Kellendonk on 2014-07-27.
//  Copyright (c) 2014 Chris Kellendonk. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class BackgroundLayer: CAGradientLayer {
    init(frame:CGRect) {
        super.init()
        
        self.frame = frame
        
        // Create the colors
        let top = UIColor(red: 0.000, green: 0.831, blue: 0.333, alpha: 1.000).CGColor
        let bottom = UIColor(red: 0.082, green: 1.000, blue: 0.549, alpha: 1.000).CGColor
        
        // Set colors
        self.colors = Array<AnyObject>([top,bottom])
    }
}