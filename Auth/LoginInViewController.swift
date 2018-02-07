//
//  LoginInViewController.swift
//  Auth
//
//  Created by Tam Ibz on 06/02/2018.
//  Copyright © 2018 tamibzz. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func loginButtonAction(_ sender: Any) {
        if self.emailTextField.text == "" || self.passwordTextField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            let defualtAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defualtAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            Auth.auth().signIn(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                    if error == nil {
                        print("Successfully Logged In")

                        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Feed")
                        self.present(vc!, animated: true, completion: nil)

            } else {
                let alertController = UIAlertController(title: "Cant Sign In", message: "Try to make a new account", preferredStyle: .alert)
                let defualtAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defualtAction)

                self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }

}


