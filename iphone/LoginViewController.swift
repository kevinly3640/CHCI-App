//
//  LoginViewController.swift
//  iphone
//
//  Created by CS Student on 2017-11-27.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {


    @IBOutlet weak var LoginText: UILabel!
    @IBOutlet weak var UserNameText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loggedin = false
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
            let next = self.storyboard?.instantiateViewController(withIdentifier: "landscape") as! LandscapeCard
            self.present(next, animated: true, completion: nil)
            PasswordText.text = ""
            loggedin = true            
            
        }
        /*   //EASTER EGGS >:3c
       else if UserNameText.text == "landon" {
       LoginText.text = "nice meme"
       }
       else if UserNameText.text == "kevin" {
        LoginText.text = "no, go back"
       }
       else if UserNameText.text == "colm" {
        LoginText.text = "👌"
       }
 */
        else{
            LoginText.text = "Credentials do not match"
        }
    }
    /*override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if loggedin == true {
        if UIDevice.current.orientation.isLandscape {
            self.dismiss(animated: true, completion: nil)
            let next = self.storyboard?.instantiateViewController(withIdentifier: "landscape") as! LandscapeCard
            self.present(next, animated: true, completion: nil)
        }
        }
    }*/
    /*
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated) // No need for semicolon
    }
    func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
            //test.backgroundColor = UIColor.purple
            print("hello")
        } else {
            //test.backgroundColor = UIColor.blue
            print("bai")
        }*/
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}*/
