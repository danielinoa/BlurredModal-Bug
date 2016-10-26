//
//  BlurredModalViewController.swift
//  BlurredModal
//
//  Created by Daniel Inoa on 10/25/16.
//  Copyright © 2016 Daniel Inoa. All rights reserved.
//

import UIKit

class BlurredModalViewController: UIViewController {

    @IBOutlet private weak var visualEffectView: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visualEffectView.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.2) {
            self.visualEffectView.alpha = 1
        }
    }
    
    @IBAction func dismiss(_ sender: Any) {
        UIView.animate(withDuration: 0.2, animations: {
            self.visualEffectView.alpha = 0
        }, completion: { _ in
            self.dismiss(animated: true, completion: nil)
        })
    }
    
}
