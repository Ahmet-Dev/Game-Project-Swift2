//
//  GameOver.swift
//  Deneme2
//
//  Created by ATS on 19/09/2015.
//  Copyright (c) 2015 wissen. All rights reserved.
//

import Foundation
class GameOver: ViewController {
    var scoretype:[[String:Int]]!
    var time = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: "timerFunc", userInfo: nil, repeats: true)
    }
    func timerFunc()
    {
        time++
        if time == 10
        {
            let gameView:GameOver = storyboard?.instantiateViewControllerWithIdentifier("Menu") as! GameOver
            navigationController?.pushViewController(gameView, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
