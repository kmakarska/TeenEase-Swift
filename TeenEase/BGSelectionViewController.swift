//
//  BGSelectionViewController.swift
//  TeenEase
//
//  Created by Katie on 8/11/20.
//  Copyright © 2020 TeenEaseTeam. All rights reserved.
//

import UIKit

class BGSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
              super.viewDidLayoutSubviews()
              
              let scrollView = UIScrollView(frame: CGRect(x: 50, y: 400, width: view.frame.size.width - 100, height: view.frame.size.height - 500))
              scrollView.backgroundColor = .green
        
              view.addSubview(scrollView)
              
              let topButton = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
              topButton.backgroundColor = .blue
              scrollView.addSubview(topButton)
              
              let Button2 = UIButton(frame: CGRect(x: 20, y: 125, width: 100, height: 100))
              Button2.backgroundColor = .blue
              
              scrollView.addSubview(Button2)
              
              
              scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
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
//<button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="Qjo-y9-Qpc">
//                                       <rect key="frame" x="47" y="138" width="320" height="90"/>
//                                       <autoresizingMask key="autoresizingMask" flexibleMinX="YES" flexibleMaxX="YES" flexibleMaxY="YES"/>
//                                       <state key="normal" backgroundImage="newwaterbutton"/>
//                                       <connections>
//                                           <segue destination="ETU-Fa-tfx" kind="show" id="wpe-Z7-yVb"/>
//                                       </connections>
//                                   </button>
