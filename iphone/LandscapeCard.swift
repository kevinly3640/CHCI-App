//
//  LandscapeCard.swift
//  iphone
//
//  Created by CS Student on 2017-11-23.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit

class LandscapeCard: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //function for when the user turns their device
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        //check if device is portrait
        if UIDevice.current.orientation.isPortrait {
            //self.dismiss is missing so the student card can continue to show up
            let next = self.storyboard?.instantiateViewController(withIdentifier: "tabs") as! UITabBarController//prepare to go to tab bar controller
            self.present(next, animated: true, completion: nil)//go to tab bar controller
            
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


