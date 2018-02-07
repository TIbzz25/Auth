
//
//  FeedViewController.swift
//  Auth
//
//  Created by Tam Ibz on 06/02/2018.
//  Copyright © 2018 tamibzz. All rights reserved.
//
//
import UIKit
import FirebaseAuth
import Firebase

class FeedViewController: UIViewController {

    @IBAction func logoutTappedAction(_ sender: Any) {


            if Auth.auth().currentUser != nil {
                do {
                    try Auth.auth().signOut()
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                    present(vc, animated: true, completion: nil)
                } catch let error as NSError {
                    print(error.localizedDescription)
            }

        }
    }

}
