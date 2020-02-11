//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController , AVAudioPlayerDelegate {
    
    
 var player : AVAudioPlayer?
    let playsoundArray = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
   
      

        playSound(soundselected : playsoundArray [sender.tag - 1])
      
   
    }
    
    func playSound(soundselected : String) {

    let soundURL = Bundle.main.url(forResource: soundselected , withExtension: "wav")


        do {
            player = try AVAudioPlayer(contentsOf: soundURL!)
            guard let player = player else { return }

            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
    }


//}
//
}
