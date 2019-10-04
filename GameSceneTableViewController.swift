//
//  GameSceneTableViewController.swift
//  Deneme2
//
//  Created by ATS on 19/09/2015.
//  Copyright (c) 2015 wissen. All rights reserved.
//

import UIKit
import AVFoundation
class GameSceneTableViewController:UITableViewController
{
    @IBOutlet weak var sinirView: UIProgressView!
    @IBOutlet weak var limitLabel: UILabel!
    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet var table: UITableView!
    @IBOutlet weak var nowLabel1: UILabel!
    var musicSound:AVAudioPlayer?
    var nowTime = 0
    var localtime:Int!
    var scorenow:Int!
    var limitbutton = 0
    var timer:NSTimer!
    var stringnum = ""
    var used:Bool = false
    var hamlesayi:Int!
    var simdikihamle = 0
        var object1:LevelViewController?
    override func viewDidLoad() {
        let options = NSUserDefaults.standardUserDefaults()
        localtime = options.valueForKey("time") as! Int
        super.viewDidLoad()        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.9, target: self, selector: "timerFunc", userInfo: nil, repeats: true)
        //object1 = storyboard?.instantiateViewControllerWithIdentifier("Menu") as! LevelViewController
        scorenow = 0
        nowLabel1.text = "\(scorenow)"
        backgroundSound()
        findsinir()
        
    }
    func findsinir()
    {
        let options = NSUserDefaults.standardUserDefaults()
        hamlesayi = options.valueForKey("lim") as! Int
        sinirView.progress = Float(simdikihamle / hamlesayi)
    }
    func backgroundSound()
    {
        let options = NSUserDefaults.standardUserDefaults()
        let music = options.valueForKey("music") as! String
        let backSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("\(music)", ofType: "wav")!)
        do
        {
            try musicSound = AVAudioPlayer(contentsOfURL: backSound)
            musicSound?.prepareToPlay()
        } catch
        {
            print("Player not available")
        }
        if ((musicSound?.playing) != nil)
        {
            musicSound?.play()
        }
        else
        {
            musicSound?.stop()
        }
    }
    func timerFunc()
    {
        nowTime += 1
        let levelsView:GameOverViewController = storyboard?.instantiateViewControllerWithIdentifier("GameOver") as! GameOverViewController
        if (nowTime <= localtime && storyboard?.isEqual(levelsView) != nil)
        {
        timeLabel.text = "\(localtime-nowTime)"
        }
        else
        {
            timer.invalidate()
            let levelsView:GameOverViewController = storyboard?.instantiateViewControllerWithIdentifier("GameOver") as! GameOverViewController
            navigationController?.pushViewController(levelsView, animated: true)
        }
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Table view data source
    @IBAction func buton2(sender: AnyObject)
    {
    let sayi:String = "2"
    limitbutton++
    if limitbutton > 2
    {//kapama işlemi
        
    }
        else
        {
        stringnum = stringnum + sayi
        nowLabel1.text = stringnum
        used = false
        }
    }
    @IBAction func buton3(sender: AnyObject)
    {
        let sayi:String = "3"
        limitbutton++
        if limitbutton > 2
        {//kapama işlemi
            
        }
        else
        {
            stringnum = stringnum + sayi
            nowLabel1.text = stringnum
            used = false
        }
    }
    @IBAction func buton4(sender: AnyObject)
    {
        let sayi:String = "4"
        limitbutton++
        if limitbutton > 2
        {//kapama işlemi
            
        }
        else
        {
            stringnum = stringnum + sayi
            nowLabel1.text = stringnum
            used = false
        }
        
    }
    @IBAction func buton5(sender: AnyObject)
    {
        let sayi:String = "5"
        limitbutton++
        if limitbutton > 2
        {//kapama işlemi
            
        }
        else
        {
            stringnum = stringnum + sayi
            nowLabel1.text = stringnum
            used = false
        }
    }
    @IBAction func buton6(sender: AnyObject)
    {
        let sayi:String = "6"
        limitbutton++
        if limitbutton > 2
        {//kapama işlemi
            
        }
        else
        {
            stringnum = stringnum + sayi
            nowLabel1.text = stringnum
            used = false
        }
    }
    @IBAction func buton7(sender: AnyObject)
    {
        let sayi:String = "7"
        limitbutton++
        if limitbutton > 2
        {//kapama işlemi
            
        }
        else
        {
            stringnum = stringnum + sayi
            nowLabel1.text = stringnum
            used = false
        }
    }
    @IBAction func buton8(sender: AnyObject)
    {
        let sayi:String = "8"
        limitbutton++
        if limitbutton > 2
        {//kapama işlemi
            
        }
        else
        {
            stringnum = stringnum + sayi
            nowLabel1.text = stringnum
            used = false
        }
    }
    @IBAction func buton9(sender: AnyObject)
    {
        let sayi:String = "9"
        limitbutton++
        if limitbutton > 2
        {//kapama işlemi
            
        }
        else
        {
            stringnum = stringnum + sayi
            used = false
            nowLabel1.text = stringnum
        }
    }
    @IBAction func cikar(sender: AnyObject)
    {
        let islem:String = " - "
        if used == false
        {
                limitbutton = 0
                stringnum = stringnum + islem
                nowLabel1.text = stringnum
                used = true
                simdikihamle++
        }
        findsinir()
    }
    @IBAction func carp(sender: AnyObject)
    {
        let islem:String = " * "
        if used == false
        {
            limitbutton = 0
            stringnum = stringnum + islem
            nowLabel1.text = stringnum
            used = true
            simdikihamle++
        }
        findsinir()
    }
    @IBAction func topla(sender: AnyObject)
    {
        let islem:String = " + "
        if used == false
        {
            limitbutton = 0
            stringnum = stringnum + islem
            nowLabel1.text = stringnum
            used = true
            simdikihamle++
        }
        findsinir()
    }
    @IBAction func bolme(sender: AnyObject)
    {
        let islem:String = " / "
        if used == false
        {
            limitbutton = 0
            stringnum = stringnum + islem
            nowLabel1.text = stringnum
            used = true
            simdikihamle++
        }
        findsinir()
    }
    @IBAction func del(sender: AnyObject)
    {
        stringnum = ""
        limitbutton = 0
        nowLabel1.text = stringnum
        used = false
        simdikihamle = 0
        findsinir()
    }
    @IBAction func enter(sender: AnyObject)
    {
        used = false
        let num = (stringnum as NSString).intValue
        nowLabel1.text = "\(num)"
    }
}
