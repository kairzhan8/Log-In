//
//  LoginViewController.swift
//  Log In
//
//  Created by Kairzhan Kural on 8/10/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var loginButton: UIButton!

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }
    
    @IBAction func login() {
        let storyBoard = UIStoryboard(name:"Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "welcome") as! WelcomeViewController
        if username.text == "kairzhan" && password.text == "password" {
            newViewController.username = username.text!
            self.present(newViewController, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Username or password is not correct", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        
        
    }
    
    @IBAction func showUsernameAlert() {
        let alert = UIAlertController(title: "Oops!", message: "Your username is 'kairzhan'", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    @IBAction func showPasswordAlert() {
           let alert = UIAlertController(title: "Oops!", message: "Your pasword is 'password'", preferredStyle: .alert)
           
           alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
           
           self.present(alert, animated: true)
       }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        username.text = ""
        password.text = ""
    }
    

}

