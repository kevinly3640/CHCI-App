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
    @IBOutlet weak var cardCheck: UIImageView!
    @IBOutlet weak var fitnessCheck: UIImageView!
    @IBOutlet weak var bookCheck: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Img.layer.cornerRadius = Img.frame.size.width/2
        Img.clipsToBounds = true
        
        if cardYes==true {
            cardCheck.image = UIImage(named: "Yes Option Graphic")
        } else {
                cardCheck.image = UIImage(named: "No Option Graphic")
            }
        if fitnessYes==true {
            fitnessCheck.image = UIImage(named: "Yes Option Graphic")
        } else {
            fitnessCheck.image = UIImage(named: "No Option Graphic")
        }
        if bookYes==true {
            bookCheck.image = UIImage(named: "Yes Option Graphic")
        } else {
            bookCheck.image = UIImage(named: "No Option Graphic")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chciURLTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://chc.wrdsb.ca/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func myWayURLTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://myway.wrdsb.ca/")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func guidanceURLTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://chc.wrdsb.ca/guidance/")! as URL, options: [:], completionHandler: nil)
    }
    
    /*@IBAction func CardRotate(_ sender: Any) {
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
        let next = self.storyboard?.instantiateViewController(withIdentifier: "landscape") as! LandscapeCard
        self.present(next, animated: true, completion: nil)
    }*/
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
