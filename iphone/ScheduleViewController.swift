//
//  ScheduleViewController.swift
//  iphone
//
//  Created by CS Student on 2017-11-22.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
        func shouldAutorotate() -> Bool {
            return true
        }
        func supportedInterfaceOrientations() -> Int {
            print("supportedInterfaceOrientations")
            return Int(UIInterfaceOrientationMask.landscapeLeft.rawValue)
        }
        
        func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
            return UIInterfaceOrientation.landscapeLeft
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
