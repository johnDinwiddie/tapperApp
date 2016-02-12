//
//  ViewController.swift
//  tapperApp
//
//  Created by strangerInDisguise on 2/11/16.
//  Copyright © 2016 criticalEntertainment. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //properties
    var maxTaps = 0
    var currentTaps = 0

    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var coolText: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    //hidden before button pressed
    @IBOutlet weak var coconutButton: UIButton!
    @IBOutlet weak var palmTreeImg: UIImageView!
    @IBOutlet weak var tapsLabel: UILabel!
    
    //Actions
    @IBAction func onCoconutButtonTapped(sender: UIButton!){
        currentTaps++
        updateTapsLabel()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton) {

        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            coolText.hidden = true
            howManyTapsTxt.hidden = true
            playButton.hidden = true
            
            coconutButton.hidden=false
            palmTreeImg.hidden=false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
        
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        coolText.hidden = false
        howManyTapsTxt.hidden = false
        playButton.hidden = false
        
        coconutButton.hidden = true
        palmTreeImg.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps{
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
        
    }
    
}

