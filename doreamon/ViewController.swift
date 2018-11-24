//
//  ViewController.swift
//  doreamon
//
//  Created by SU_18 on 11/9/18.
//  Copyright © 2018 ICTSUIM. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    var audioplayer : AVAudioPlayer!
    
   let soundFilesName = ["button-09","button-47","button-50"]
    
    var  timer = Timer()
    var timeCount = 1800

    @IBOutlet weak var randomtext: UILabel!
    
    @IBOutlet weak var timecount: UILabel!
    
    
    
    func playsound(_ playthis:String){
        let soundURL = Bundle.main.url(forResource:playthis,withExtension:"mp3")
        audioplayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioplayer.play()}
    
    
    
    @objc func processTimer(){
        //local scope อยู่ในฟังค์ชั่น เรียกใช้ได้เฉพาะในฟังค์ชั่น
        print("A second has passed")
        
        if timeCount > 0 {
            
            timeCount -= 1
            timecount.text = String(timeCount)
        }else{
            timer.invalidate()
        }
        
        playsound("button-09")
        
        print(timeCount)
        timecount.text = "\(timeCount)"
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func play(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval:1, target: self,
                                     selector: #selector(ViewController.processTimer),userInfo: nil,repeats:true)
        
    }
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func resetbut(_ sender: Any) {
        timeCount = 1800
        timecount.text = String(timeCount)
        
    }
    
    
    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
    }
    
    

    @IBAction func ramdom(_ sender: Any) {
        
        
        let card = [
            1:"1",
            2:"2",
            3:"3",
            4:"4",
            5:"5",
            6:"6",
            7:"7",
            8:"8",
            9:"9",
            10:"10",
            11:"J",
            12:"Q",
            13:"k"]
        
        let Randomcard = Int (arc4random_uniform(UInt32(card.count)))
        randomtext.text = card[Randomcard]
        
        if (card[Randomcard] == "1" ){
      ProgressHUD.showSuccess("รอด")
    }
        
        else if (card[Randomcard] == "2"){
            ProgressHUD.showSuccess("ดื่ม 2 ช็อต")
        }
        else if (card[Randomcard] == "3"){
            ProgressHUD.showSuccess("ดื่ม 3 ช็อต")
        }
        else if (card[Randomcard] == "4"){
            ProgressHUD.showSuccess("ดื่ม 4 ช็อต")
        }
        else if (card[Randomcard] == "5"){
            ProgressHUD.showSuccess("เป็นบัดดี้")
        }
        else if (card[Randomcard] == "6"){
            ProgressHUD.showSuccess("เล่น category")
        }
        else if (card[Randomcard] == "7"){
            ProgressHUD.showSuccess("ห้ามพูดเลขที่หาร 7 ลงตัว")
        }
        else if (card[Randomcard] == "8"){
            ProgressHUD.showSuccess("มีสิทธิ์เข้าห้องน้ำ")
        }
        else if (card[Randomcard] == "9"){
            ProgressHUD.showSuccess("คนทางซ้ายดื่ม")
        }
        else if (card[Randomcard] == "10"){
            ProgressHUD.showSuccess("คนทางขวาดื่ม")
        }
        else if (card[Randomcard] == "J"){
            ProgressHUD.showSuccess("คนจับคางคนสุดท้ายดื่ม")
        }
        else if (card[Randomcard] == "Q"){
            ProgressHUD.showSuccess("ห้ามพูด")
        }
        else if (card[Randomcard] == "K"){
            ProgressHUD.showSuccess("สั่งใครทำอะไรก็ได้")
        }
    }
    
    
    
    
    
    

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            let card = [
                1:"A",
                2:"2",
                3:"3",
                4:"4",
                5:"5",
                6:"6",
                7:"7",
                8:"8",
                9:"9",
                10:"10",
                11:"J",
                12:"Q",
                13:"k"]
            
            let Randomcard = Int (arc4random_uniform(UInt32(card.count)))
            randomtext.text = card[Randomcard]
            
            if (card[Randomcard] == "A" ){
                ProgressHUD.showSuccess("รอด")
            }
                
            else if (card[Randomcard] == "2"){
                ProgressHUD.showSuccess("ดื่ม 2 ช็อต")
            }
            else if (card[Randomcard] == "3"){
                ProgressHUD.showSuccess("ดื่ม 3 ช็อต")
            }
            else if (card[Randomcard] == "4"){
                ProgressHUD.showSuccess("ดื่ม 4 ช็อต")
            }
            else if (card[Randomcard] == "5"){
                ProgressHUD.showSuccess("เป็นบัดดี้")
            }
            else if (card[Randomcard] == "6"){
                ProgressHUD.showSuccess("เล่น category")
            }
            else if (card[Randomcard] == "7"){
                ProgressHUD.showSuccess("ห้ามพูดเลขที่หาร 7 ลงตัว")
            }
            else if (card[Randomcard] == "8"){
                ProgressHUD.showSuccess("มีสิทธิ์เข้าห้องน้ำ")
            }
            else if (card[Randomcard] == "9"){
                ProgressHUD.showSuccess("คนทางซ้ายดื่ม")
            }
            else if (card[Randomcard] == "10"){
                ProgressHUD.showSuccess("คนทางขวาดื่ม")
            }
            else if (card[Randomcard] == "J"){
                ProgressHUD.showSuccess("คนจับคางคนสุดท้ายดื่ม")
            }
            else if (card[Randomcard] == "Q"){
                ProgressHUD.showSuccess("ห้ามพูด")
            }
            else if (card[Randomcard] == "K"){
                ProgressHUD.showSuccess("สั่งใครทำอะไรก็ได้")
            }
        }
            

        }
    }




    
    
    


