//
//  LevelViewController.swift
//  Deneme2
//
//  Created by ATS on 19/09/2015.
//  Copyright (c) 2015 wissen. All rights reserved.
//

import UIKit
import AVFoundation

class LevelViewController: UIViewController {
    //var time:Int!
    var time:Int!
    var limit:Int!
    var ramdomvalue:Int!
    var musicType:String?
    var buttonSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("buttonsound", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()
    let options = NSUserDefaults.standardUserDefaults()
    func randomvalueController(a: Int) -> Bool
    {
        var x:Bool = true
        if a % 2 == 0
        {
           x = false
        }
        else if a % 3 == 0
        {
           x = false
        }
        else if a % 5 == 0
        {
           x = false
        }
        else if a % 7 == 0
        {
           x = false
        }
        else if a % 11 == 0
        {
            x = false
        }
        else
        {
            x = true
        }
        return x
    }
    func randomnumGenerator(maxnum:Int) -> Int
    {
        var a = random() % maxnum
        if randomvalueController(a) == true
        {
            a = random() % maxnum
        }
        return a
    }
    func easy()
    {
        time = 20
        limit = 2
        musicType = "easy"
        ramdomvalue = 256
        options.setInteger(time, forKey: "time")
        options.setInteger(limit, forKey: "lim")
        options.setValue(musicType, forKey: "music")
        options.setInteger(ramdomvalue, forKey: "maxval")
    }
    func normal()
    {
        time = 15
        limit = 4
        musicType = "easy"
        ramdomvalue = 512
        options.setInteger(time, forKey: "time")
        options.setInteger(limit, forKey: "lim")
        options.setValue(musicType, forKey: "music")
        options.setInteger(ramdomvalue, forKey: "maxval")
    }
    func hard()
    {
        time = 10
        limit = 6
        musicType = "hard"
        ramdomvalue = 2048
        options.setInteger(time, forKey: "time")
        options.setInteger(limit, forKey: "lim")
        options.setValue(musicType, forKey: "music")
        options.setInteger(ramdomvalue, forKey: "maxval")
    }
    func hardcore()
    {
        time = 6
        limit = 8
        musicType = "core"
        ramdomvalue = 20480
        options.setInteger(time, forKey: "time")
        options.setInteger(limit, forKey: "lim")
        options.setValue(musicType, forKey: "music")
        options.setInteger(ramdomvalue, forKey: "maxval")
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        audioPlayer = try! AVAudioPlayer(contentsOfURL: buttonSound, fileTypeHint: nil)
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func easyPassed(sender: UIButton)
    {
        easy()
        let gameView:GameSceneTableViewController = storyboard?.instantiateViewControllerWithIdentifier("GameScene") as! GameSceneTableViewController
        navigationController?.pushViewController(gameView, animated: true)
        audioPlayer.play()
    }
    @IBAction func normalPassed(sender: UIButton)
    {
        normal()
        let gameView:GameSceneTableViewController = storyboard?.instantiateViewControllerWithIdentifier("GameScene") as! GameSceneTableViewController
        navigationController?.pushViewController(gameView, animated: true)
    audioPlayer.play()
    }
    @IBAction func hardPassed(sender: UIButton)
    {
        hard()
        let gameView:GameSceneTableViewController = storyboard?.instantiateViewControllerWithIdentifier("GameScene") as! GameSceneTableViewController
        navigationController?.pushViewController(gameView, animated: true)
    audioPlayer.play()
    }
    @IBAction func hardCorePassed(sender: UIButton)
    {
        hardcore()
        let gameView:GameSceneTableViewController = storyboard?.instantiateViewControllerWithIdentifier("GameScene") as! GameSceneTableViewController
        navigationController?.pushViewController(gameView, animated: true)
        audioPlayer.play()
    }
}
