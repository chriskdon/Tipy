//
//  DashboardViewController.swift
//  Tipster
//
//  Created by Chris Kellendonk on 2014-07-27.
//  Copyright (c) 2014 Chris Kellendonk. All rights reserved.
//

import Foundation
import UIKit

class DashboardViewController: UIViewController {
    let dashboardView:DashboardView
    
    init(frame:CGRect) {
        dashboardView = DashboardView(frame: frame)
        
        super.init(nibName: nil, bundle: nil)
        
        view = dashboardView
    }
}