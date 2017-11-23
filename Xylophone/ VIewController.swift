//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
//import AudioToolbox

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    
    let noteArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    @IBAction func notePressed(_ sender: UIButton) {

        var noteIndex : Int
        noteIndex = sender.tag - 1
        
        let soundURL = Bundle.main.url(forResource: noteArray[noteIndex], withExtension: "wav")
        
        do {
        try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
       
    }
    

}

