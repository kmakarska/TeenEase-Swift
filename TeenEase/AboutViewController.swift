//
//  AboutViewController.swift
//  TeenEase
//
//  Created by Katie on 8/1/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {


    @IBAction func saveAboutButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        //Set
        defaults.set(name.text, forKey: "firstname")
        defaults.set(age.text, forKey: "age")
        defaults.set(country.text, forKey: "country")
    }
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var country: UITextField!
 
    @IBOutlet weak var age: UITextField!

    
   override func viewDidLoad() {
      super.viewDidLoad()
        let defaults = UserDefaults.standard
        name.text = defaults.string(forKey: "firstname")
        country.text = defaults.string(forKey: "country")
        age.text = defaults.string(forKey: "age")
    
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
