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
    
    var queuePlayer: AVQueuePlayer!
    var playerLooper: AVPlayerLooper!
    
    @IBOutlet weak var ssbackbutton: UIButton!
    
    @IBAction func ssbackbuttonaction(_ sender: Any) {
        audioPlayer!.stop()
    }
    @IBOutlet weak var textlabel: UILabel!
    
    var audioPlayer: AVAudioPlayer?
    var finalText = ""
    var finalscenery = ""
    var finalsounds = ""
    var soundselect = ""
    var sceneryselect = ""
    
    override func viewDidLoad() {
       super.viewDidLoad()
        textlabel.layer.zPosition = 1;
        ssbackbutton.layer.zPosition = 1;
        textlabel.text = finalText
        print(finalText)
        print(finalscenery)
        print(finalsounds)
        if finalsounds == " Crashing Waves" {
            soundselect = "crashingwaves"
        } else if finalsounds == " Raindrops" {
            soundselect = "rainsound"
        } else if finalsounds == " Light Winds" {
            soundselect = "blizzard"
        }else { soundselect = "crashingwaves"
        }
        if finalscenery == " Sunset Beach"{
            sceneryselect = "sunsetbeach"
        } else if finalscenery == " Dripping Rain" {
            sceneryselect = "rain2"
        } else if finalscenery == " Soft Snow"{
            sceneryselect = "blizzardvideo"
        } else { sceneryselect  = "sunsetbeach"
        }
        
        
        
        
        
    
        let pathToSound = Bundle.main.path(forResource: soundselect, ofType: "mp3")!
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

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let path = Bundle.main.path(forResource: sceneryselect, ofType: "mp4")!
              let url = URL(fileURLWithPath: path)
              let asset = AVAsset(url: url)
              let playerItem = AVPlayerItem(asset: asset)
              
              self.queuePlayer = AVQueuePlayer(playerItem: playerItem)
              self.playerLooper = AVPlayerLooper(player: queuePlayer, templateItem: playerItem)

              let layer = AVPlayerLayer(player: queuePlayer)
              layer.frame = CGRect(x: 0, y: -2, width: UIScreen.main.bounds.width, height: 900)
       //     layer.frame = CGRect(x: 0, y: -50, width: UIScreen.main.bounds.width, height: 898)
        
              view.layer.addSublayer(layer)
              
              self.queuePlayer.play()

//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "rain", ofType: "mp4")!))
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 925)
//
//
//        view.layer.addSublayer(layer)
//            player.play()
    }

}
