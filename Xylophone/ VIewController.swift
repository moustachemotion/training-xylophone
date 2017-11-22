//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
        

    let noteArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    @IBAction func notePressed(_ sender: UIButton) {

        
        
        var noteTouched : Int
        noteTouched = sender.tag - 1
        
        if let soundURL = Bundle.main.url(forResource: noteArray[noteTouched], withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
       
    }
    

}

