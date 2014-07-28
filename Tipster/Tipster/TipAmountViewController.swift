//
//  TipAmountViewController.swift
//  Tipster
//
//  Created by Chris Kellendonk on 2014-07-27.
//  Copyright (c) 2014 Chris Kellendonk. All rights reserved.
//

import Foundation
import UIKit

class TipAmountViewController: UIViewController {
    let tipAmountView:TipAmountView
    
    init(frame:CGRect) {
        tipAmountView = TipAmountView(frame: frame)
        
        super.init(nibName: nil, bundle: nil)
        
        view = tipAmountView
    }
}