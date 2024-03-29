//
//  BasicInfoViewController.swift
//  TeenEase
//
//  Created by Katie on 8/1/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit

class BasicInfoViewController: UIViewController, UITextFieldDelegate {

    @IBAction func saveBIButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        //Set
        defaults.set(firstNameInput.text, forKey: "firstname")
        defaults.set(ageInput.text, forKey: "age")
        defaults.set(countryInput.text, forKey: "country")
    }
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var firstNameInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        let defaults = UserDefaults.standard
        firstNameInput.text = defaults.string(forKey: "firstname")
        countryInput.text = defaults.string(forKey: "country")
        ageInput.text = defaults.string(forKey: "age")
        
        self.firstNameInput.delegate = self
        self.countryInput.delegate = self
        self.ageInput.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
