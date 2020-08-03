//
//  SSViewViewController.swift
//  TeenEase
//
//  Created by Katie on 7/31/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class SSPageViewController: UIViewController {
    
    @IBOutlet weak var textlabel: UILabel!
    var audioPlayer: AVAudioPlayer?
    var finalText = "Hello"
    override func viewDidLoad() {
       super.viewDidLoad()
        
        textlabel.text = finalText
        
        let pathToSound = Bundle.main.path(forResource: "rainsound", ofType: "mp3")!
               let url = URL(fileURLWithPath: pathToSound)
               do {
                   audioPlayer = try AVAudioPlayer(contentsOf: url)
                   audioPlayer?.numberOfLoops = -1
                   audioPlayer?.play()
               } catch {
                   //error
               }
        // Do any additional setup after loading the view.
    }

//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "rain", ofType: "mp4")!))
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 870)
//
//        view.layer.addSublayer(layer)
//            player.play()
//    }

}
