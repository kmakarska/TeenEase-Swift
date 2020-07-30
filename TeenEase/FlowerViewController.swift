//
//  FlowerViewController.swift
//  TeenEase
//
//  Created by Katie on 7/12/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit
import Lottie


class FlowerViewController: UIViewController {
    @IBOutlet weak var breathingtext: UILabel!
    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
setupAnimation()


        // Do any additional setup after loading the view.
    }

    private func setupAnimation() {
        animationView.animation = Animation.named("realflower")
        animationView.frame = view.bounds
        animationView.frame = CGRect(x: -5, y: 200, width: 400,height:400)
 //       animationView.backgroundColor = .white
        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .autoReverse
        animationView.play(completion: { (finished) in
                self.breathingtext.text = "Breathe out"
                self.animationView.play(completion: { (finished) in
                    self.animationView.play(completion: { (finished) in
                        self.animationView.play(completion: { (finished) in
                            self.animationView.play()
                            self.animationView.loopMode = .autoReverse
                            self.animationView.animationSpeed = 0.5
                            self.breathingtext.text = ""
                        })
                        self.animationView.animationSpeed = -0.5
                        self.breathingtext.text = "Breathe Out"
                    })
                    self.animationView.animationSpeed = 0.5
                    self.breathingtext.text = "Breathe In"
                })
            self.animationView.animationSpeed = -0.5

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

