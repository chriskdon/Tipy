//
//  MainViewController.swift
//  Tipster
//
//  Created by Chris Kellendonk on 2014-07-27.
//  Copyright (c) 2014 Chris Kellendonk. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    let DIGIT_VIEW_HEIGHT:CGFloat = 370
    let TIP_AMOUNT_VIEW_HEIGHT:CGFloat = 50
    
    let digitViewController:DigitViewController
    let tipAmountViewController:TipAmountViewController
    let dashboardViewController:DashboardViewController
    
    init() {
        let digitViewTopY:CGFloat = 568 - DIGIT_VIEW_HEIGHT
        let tipViewTopY:CGFloat = digitViewTopY - TIP_AMOUNT_VIEW_HEIGHT
        
        digitViewController = DigitViewController(frame: CGRectMake(0, digitViewTopY,
                                                                    320, DIGIT_VIEW_HEIGHT))
        
        tipAmountViewController = TipAmountViewController(frame: CGRectMake(0, tipViewTopY,
                                                                            320, TIP_AMOUNT_VIEW_HEIGHT))
        
        dashboardViewController = DashboardViewController(frame: CGRectMake(0, 0, 320,
                                                                            568 - DIGIT_VIEW_HEIGHT - TIP_AMOUNT_VIEW_HEIGHT))
        
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(BackgroundLayer(frame:view.bounds))
        
        // Digit View
        addChildViewController(digitViewController)
        view.addSubview(digitViewController.view)
        
        // Tip Amount View
        addChildViewController(tipAmountViewController)
        view.addSubview(tipAmountViewController.view)
        
        // Dashboard View
        addChildViewController(dashboardViewController)
        view.addSubview(dashboardViewController.view)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
