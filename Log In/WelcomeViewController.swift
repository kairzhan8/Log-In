//
//  WelcomeViewController.swift
//  Log In
//
//  Created by Kairzhan Kural on 8/10/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcome: UILabel!
    
    var username = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        welcome.text = "Welcome, \(username)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
