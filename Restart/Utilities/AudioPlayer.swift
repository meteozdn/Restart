//
//  AudioPlayer.swift
//  Restart
//
//  Created by Metehan Özden on 20.10.2024.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?
func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("errorr")
        }
    }
}
