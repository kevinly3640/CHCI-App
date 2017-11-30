//
//  LoginViewController.swift
//  iphone
//
//  Created by CS Student on 2017-11-27.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit
var loggedin = false
class LoginViewController: UIViewController {


    @IBOutlet weak var LoginText: UILabel!
    @IBOutlet weak var UserNameText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBAction func LoginBtnPressed(_ sender: Any) {
        if(UserNameText.text == "" && PasswordText.text == "")
        {
            self.dismiss(animated: true, completion: nil)
            let next = self.storyboard?.instantiateViewController(withIdentifier: "tabs") as! UITabBarController
            self.present(next, animated: true, completion: nil)
            PasswordText.text = ""
        }
        else{
            LoginText.text = "Credentials do not match"
        }
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if loggedin == true {
        if UIDevice.current.orientation.isLandscape {
            self.dismiss(animated: true, completion: nil)
            let next = self.storyboard?.instantiateViewController(withIdentifier: "landscape") as! LandscapeCard
            self.present(next, animated: true, completion: nil)
        }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
