//
//  WaterViewController.swift
//  TeenEase
//
//  Created by Katie on 7/24/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit
import Lottie

class WaterViewController: UIViewController {
    @IBOutlet weak var breathingtext2: UILabel!
    let animationView = AnimationView()

        override func viewDidLoad() {
            super.viewDidLoad()
        setupAnimation()


                // Do any additional setup after loading the view.
            }

            private func setupAnimation() {
                animationView.animation = Animation.named("water2")
                animationView.frame = view.bounds
     //           animationView.frame = CGRect(x: 30, y: 250, width: 350,height:350)
                animationView.frame = CGRect(x: (view.frame.size.width - 370) , y: 250, width: 350,height:350)
         //       animationView.backgroundColor = .white
                animationView.contentMode = .scaleAspectFit
        //        animationView.loopMode = .autoReverse
                animationView.play(completion: { (finished) in
                        self.breathingtext2.text = "Breathe Out"
                        self.animationView.play(completion: { (finished) in
                            self.animationView.play(completion: { (finished) in
                                self.animationView.play(completion: { (finished) in
                                    self.animationView.play()
                                    self.animationView.loopMode = .autoReverse
                                    self.animationView.animationSpeed = 0.75
                                    self.breathingtext2.text = ""
                                })
                                self.animationView.animationSpeed = -0.75
                                self.breathingtext2.text = "Breathe Out"
                            })
                            self.animationView.animationSpeed = 0.75
                            self.breathingtext2.text = "Breathe In"
                        })
                    self.animationView.animationSpeed = -0.75
                    


                })
                view.addSubview(animationView)
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



                // Do any additional setup after loading the view.
            
            

            /*
            // MARK: - Navigation

            // In a storyboard-based application, you will often want to do a little preparation before navigation
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                // Get the new view controller using segue.destination.
                // Pass the selected object to the new view controller.
            }
            */

        // Do any additional setup after loading the view.
//    }
//
//    private func setupAnimation() {
//        animationView.animation = Animation.named("water2")
//        animationView.frame = view.bounds
//        animationView.backgroundColor = .white
//        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .autoReverse
//        animationView.play()
//        view.addSubview(animationView)

//    }
//    */
//
//}
