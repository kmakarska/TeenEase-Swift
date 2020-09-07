//
//  ReadyViewController.swift
//  TeenEase
//
//  Created by Katie on 9/7/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit

class ReadyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view.
    }
    
//    override func viewDidAppear() {
 //       super.viewDidAppear(true)
//        performSegue(withIdentifier: "readytotab", sender: self)
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func NextScreen(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        let firstName = defaults.string(forKey: "firstname")
        let country = defaults.string(forKey: "country")
        let age = defaults.string(forKey: "age")
        
        if (firstName == nil || firstName!.isEmpty ||
            country == nil || country!.isEmpty ||
            age == nil || age!.isEmpty)
        {
            self.performSegue(withIdentifier: "readyToBasicInfo", sender: self)
        }
        else
        {
            self.performSegue(withIdentifier: "readytotab", sender: self)
        }
       
       
        
    }
    
}
