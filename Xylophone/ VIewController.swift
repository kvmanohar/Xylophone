//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
//        //Playing sound using AVFoundation classs
//        if let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav") {
//
//            do {
//                sender.animateShake()
//                audioPlayer = try AVAudioPlayer(contentsOf: url)
//                guard let player = audioPlayer else { return }
//                try? AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
//                try? AVAudioSession.sharedInstance().setActive(true)
//
//                player.prepareToPlay()
//                player.play()
//
//            } catch let error as NSError {
//                print(error.localizedDescription)
//            }
//
//        }
        
        //Playing sound uising AudioToolbox - Sounds not longer than 30sec.
        if let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav") {
            sender.animateShake()
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound)
            
        }
        

        
        
    }
    
  

}

