//
//  DigitViewController.swift
//  Tipster
//
//  Created by Chris Kellendonk on 2014-07-27.
//  Copyright (c) 2014 Chris Kellendonk. All rights reserved.
//

import Foundation
import UIKit

class DigitViewController: UIViewController {
    let digitView:DigitView
    
    init(frame:CGRect) {
        digitView = DigitView(frame: frame)
        
        super.init(nibName: nil, bundle: nil)
        
        view = digitView
    }
}
