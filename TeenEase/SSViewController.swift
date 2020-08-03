//
//  SSViewController.swift
//  TeenEase
//
//  Created by Katie on 7/26/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//


import UIKit
import DropDown

class SSViewController: UIViewController {
    let dropDownScenery = DropDown()
    let dropDownSounds = DropDown()
    
    @IBOutlet weak var textfield: UITextField!
    var ssText = ""
    @IBOutlet weak var sceneryButton: UIButton!
    
    @IBAction func sceneryAction(_ sender: Any) {
        dropDownScenery.show()
    }
    
    @IBOutlet weak var soundsButton: UIButton!
    @IBAction func soundsAction(_ sender: Any) {
        dropDownSounds.show()
    }

    @IBAction func textfieldaction(_ sender: Any) {
        self.ssText = textfield.text!
        performSegue(withIdentifier: "text", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SSPageViewController
        vc.finalText = self.ssText
    
    }

    
    override func viewDidLoad() {
            super.viewDidLoad()

            /// set the data
            dropDownScenery.dataSource = [" Beach", " Rain", " Snow"]
            /// tell the dropdowns where to open
            dropDownScenery.anchorView = sceneryButton
            /// move down the popup so it doesn't cover the button
            dropDownScenery.bottomOffset = CGPoint(x: 0,y: 40)
            ///set button text after option is selected
            dropDownScenery.selectionAction = { [unowned self] (index: Int, item: String) in
    //          print("Selected item: \(item) at index: \(index)")
                self.sceneryButton.setTitle("Scenery: \(item)", for: .normal)
            }
            
            dropDownSounds.dataSource = [" Waves", " Rain", " Wind"]
            /// tell the dropdowns where to open
            dropDownSounds.anchorView = sceneryButton
            /// move down the popup so it doesn't cover the button
            dropDownSounds.bottomOffset = CGPoint(x: 0,y: 40)
            ///set button text after option is selected
            dropDownSounds.selectionAction = { [unowned self] (index: Int, item: String) in
    //          print("Selected item: \(item) at index: \(index)")
                self.soundsButton.setTitle("Sounds: \(item)", for: .normal)
            }

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
