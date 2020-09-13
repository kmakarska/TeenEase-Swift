//
//  ResourcesViewController.swift
//  TeenEase
//
//  Created by Stan Makarskyy on 9/12/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit
import MessageUI

class ResourcesViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
      
        /*
        switch (result) {
        case .cancelled:
            print("Message was cancelled")
        case .failed:
            print("Message failed")
        case .sent:
            print("Message was sent")
        default:
            return
        }
         */
        
        dismiss(animated: true, completion: nil)
    }
    

    @IBOutlet weak var natSuicidePhone: UILabel!
    @IBOutlet weak var samhsaPhone: UILabel!
    @IBOutlet weak var domViolencePhone: UILabel!
    @IBOutlet weak var theTrevorPhone: UILabel!
    
    @IBOutlet weak var textHometoCrisis: UILabel!
    
    // this method is used so multiple labels can use the same click handler method
    func setGestureRecognizer() -> UITapGestureRecognizer {
        var tapRecognizer = UITapGestureRecognizer()
        tapRecognizer = UITapGestureRecognizer (target: self, action: #selector(ResourcesViewController.tapFunction))
        return tapRecognizer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        // can also be set in storyboard
        natSuicidePhone.isUserInteractionEnabled = true
        samhsaPhone.isUserInteractionEnabled = true
        domViolencePhone.isUserInteractionEnabled = true
        theTrevorPhone.isUserInteractionEnabled = true
        textHometoCrisis.isUserInteractionEnabled = true
        
        // call phone
        natSuicidePhone.addGestureRecognizer(setGestureRecognizer())
        samhsaPhone.addGestureRecognizer(setGestureRecognizer())
        domViolencePhone.addGestureRecognizer(setGestureRecognizer())
        theTrevorPhone.addGestureRecognizer(setGestureRecognizer())
        
        // send message
        let tap = UITapGestureRecognizer(target: self, action: #selector(ResourcesViewController.sendText))
        textHometoCrisis.addGestureRecognizer(tap)
    
    }
        
    @objc func tapFunction(sender:UITapGestureRecognizer) {
        let label = sender.view as? UILabel
        if (label != nil && label?.text != nil)
        {
            
            self.callPhoneNumber(phoneNumber: label!.text!)
        }
        
    }
    
    @objc func sendText(sender:UITapGestureRecognizer) {
        
        guard MFMessageComposeViewController.canSendText() else {
            print("cannot send message ... running in simulator?")
            return
        }

         let message = MFMessageComposeViewController()
         message.body = "HOME";
         message.recipients = ["741741"]
         message.messageComposeDelegate = self
         self.present(message, animated: true, completion: nil)
                   
      }
    
    func callPhoneNumber(phoneNumber:String) {

           if let phoneCallURL = URL(string: "telprompt://\(phoneNumber)") {

               let application:UIApplication = UIApplication.shared
               if (application.canOpenURL(phoneCallURL)) {
                   if #available(iOS 10.0, *) {
                       application.open(phoneCallURL, options: [:], completionHandler: nil)
                   } else {
                       // Fallback on earlier versions
                        application.openURL(phoneCallURL as URL)

                   }
               }
           }
       }
    
}
