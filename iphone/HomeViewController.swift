//
//  HomeViewController.swift
//  iphone
//
//  Created by CS Student on 2017-11-22.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var settings: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if loggedin==true {
            self.tabBarController?.tabBar.isHidden=false
        }
        // Do any additional setup after loading the view.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            if loggedin == true {
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

    @IBAction func Settings(_ sender: Any) {
        if loggedin == false{
        self.tabBarController?.tabBar.isHidden=false
        } else {
            self.tabBarController?.tabBar.isHidden=true
        }
    }
}
