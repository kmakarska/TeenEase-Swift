//
//  HexViewController.swift
//  TeenEase
//
//  Created by Katie on 7/24/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit
import Lottie

class HexViewController: UIViewController {
    let animationView = AnimationView()

    @IBOutlet weak var hextext1: UILabel!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
setupAnimation()
     //  hextext1.text = "Breathe In"
        // Do any additional setup after loading the view.
    }
    
    private func setupAnimation() {
          animationView.animation = Animation.named("hex")
          animationView.frame = view.bounds
          animationView.frame = CGRect(x: -5, y: 0, width: 500,height:500)
          animationView.center = self.view.center
          animationView.backgroundColor = .white
          animationView.contentMode = .scaleAspectFit
//          animationView.loopMode = .autoReverse
         animationView.play(completion: { (finished) in
            //      self.hextext1.text = "Breathe Out"
                  self.animationView.play(completion: { (finished) in
                      self.animationView.play(completion: { (finished) in
                          self.animationView.play(completion: { (finished) in
                              self.animationView.play()
                              self.animationView.loopMode = .autoReverse
                              self.animationView.animationSpeed = 0.25
                              self.hextext1.text = ""
                          })
                        self.animationView.animationSpeed = -0.25
                 //         self.hextext1.text = "Breathe Out"
                      })
                    self.animationView.animationSpeed = 0.25
                //      self.hextext1.text = "Breathe In"
                  })
            self.animationView.animationSpeed = -0.25
              
          })
          view.addSubview(animationView)
        //view.insertSubview(animationView, at: 1)
        
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
