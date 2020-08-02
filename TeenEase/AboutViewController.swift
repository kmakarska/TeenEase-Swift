//
//  AboutViewController.swift
//  TeenEase
//
//  Created by Katie on 8/1/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var firstname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let myname = defaults.string(forKey: "firstname")
        firstname.text = myname
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
