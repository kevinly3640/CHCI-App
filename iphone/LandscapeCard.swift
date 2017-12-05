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
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isPortrait {
            
            let next = self.storyboard?.instantiateViewController(withIdentifier: "tabs") as! UITabBarController
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


