//
//  ViewController.swift
//  CoreAnimationApp
//
//  Created by Yevhen Shevchenko on 11.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    private var originCordinate: CGFloat?
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        originCordinate = greenView.frame.origin.x
    }

    @IBAction func greenButtonAction(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) {
            if self.greenView.frame.origin.x == self.originCordinate {
                self.greenView.frame.origin.x -= 10
            }
        }
    }
    
}

