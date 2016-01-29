//
//  ViewController.swift
//  SchoolChime
//
//  Created by YAMAMOTORYO on 2016/01/27.
//  Copyright © 2016年 YAMAMOTORYO. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var fileNamePath: String = "chime"
    var audioPlayer: AVAudioPlayer!
    @IBOutlet var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("chime", ofType: "mp3")!)
        
        audioPlayer = try? AVAudioPlayer(contentsOfURL: audioPath)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
    @IBAction func playNow(){
        audioPlayer.play()
    }


}

