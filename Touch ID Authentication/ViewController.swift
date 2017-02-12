//
//  ViewController.swift
//  Touch ID Authentication
//
//  Created by Atıl Samancıoğlu on 12/02/2017.
//  Copyright © 2017 Atıl Samancıoğlu. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let authContext = LAContext()
        
        var error: NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "To check if it's really you!", reply: { (success, error) in
                
                if success {
                    self.resultLabel.text = "Result: Verified"
                } else {
                    self.resultLabel.text = "Result: Not Verified"
                }
                
                
            })
            
            
        }
        
    }




}

