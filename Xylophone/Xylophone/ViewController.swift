//
//  ViewController.swift
//  Xylophone
//
//  Created by Puja Kalpesh Surve on 25/11/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnMusicTapped(_ sender: UIButton) {
        let current = sender.currentTitle
        sender.alpha = 0.5
        playSound(soundName: current ?? "")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
    }
    
    func playSound(soundName: String) {
        
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else {return}
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player!.play()
        } catch {
            
        }
        
    }

}

