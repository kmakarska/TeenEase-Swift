//
//  ColorViewController.swift
//  TeenEase
//
//  Created by Katie on 7/24/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit
import Lottie

class ColorViewController: UIViewController {
    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
setupAnimation()


        // Do any additional setup after loading the view.
    }

    private func setupAnimation() {
        animationView.animation = Animation.named("color")
        animationView.frame = view.bounds
        animationView.backgroundColor = .white
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
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
