//
//  StudentCardViewController.swift
//  iphone
//
//  Created by CS Student on 2017-11-22.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit

class StudentCardViewController: UIViewController {

    @IBOutlet weak var Img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Img.layer.cornerRadius = Img.frame.size.width/2
        Img.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //function for when the user turns the device
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        //check if the user turns it landscape
        if UIDevice.current.orientation.isLandscape {
            //check if user is logged in
            if loggedin == true {
                self.dismiss(animated: true, completion: nil)//close current tab
                let next = self.storyboard?.instantiateViewController(withIdentifier: "landscape") as! LandscapeCard//prepare to go to landscape card
                self.present(next, animated: true, completion: nil)//show landscape card
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
