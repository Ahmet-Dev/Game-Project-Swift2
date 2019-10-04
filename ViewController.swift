//
//  ViewController.swift
//  Deneme2
//
//  Created by wissen on 19/09/15.
//  Copyright (c) 2015 wissen. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var soundKey: UISwitch!
    var soundcont:Bool!
    var usersound = NSUserDefaults.standardUserDefaults()
    var buttonSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonsound", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        audioPlayer = try! AVAudioPlayer(contentsOfURL: buttonSound, fileTypeHint: nil)
        soundcont = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func gotoLevels(sender: AnyObject) {
        let levelsView:LevelViewController = storyboard?.instantiateViewControllerWithIdentifier("LevelScene") as! LevelViewController
        navigationController?.pushViewController(levelsView, animated: true)
        audioPlayer.play()
    }
    @IBAction func gotoTraining(sender: UIButton) {
        audioPlayer.play()
    }
    @IBAction func soundCont(sender: AnyObject)
    {
       if soundKey.on
       {
        soundcont = true
        usersound.setBool(soundcont, forKey: "sound")
       }
        else
       {
        soundcont = false
        usersound.setBool(soundcont, forKey: "sound")
       }
    }

}

