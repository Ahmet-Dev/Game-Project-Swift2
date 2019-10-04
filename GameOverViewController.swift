//
//  GameOverViewController.swift
//  Deneme2
//
//  Created by mac on 27.11.2015.
//  Copyright © 2015 wissen. All rights reserved.
//

import UIKit
import AVFoundation
class GameOverViewController: UIViewController
{
    var val1:Int = 0
    var timer1:NSTimer!
    var endSound:AVAudioPlayer?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        timer1 = NSTimer.scheduledTimerWithTimeInterval(0.8, target: self, selector: "timerFunc", userInfo: nil, repeats: true)
        let gameoverSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("gameover", ofType: "wav")!)
        do
        {
            try endSound = AVAudioPlayer(contentsOfURL: gameoverSound)
            endSound?.play()
        } catch
        {
            print("Player not available")
        }
        // Do any additional setup after loading the view.
        
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func timerFunc()
    {
       val1++
        if val1 == 10
        {
            timer1.invalidate()
            let levelsView:ViewController = storyboard?.instantiateViewControllerWithIdentifier("Menu") as! ViewController
            navigationController?.pushViewController(levelsView, animated: true)
        }
    }

}
