//
//  ViewDiceeViewController.swift
//  HelloIOS
//
//  Created by Hsiu Ping Lin on 2018/2/26.
//  Copyright © 2018年 Hsiu Ping Lin. All rights reserved.
//

import UIKit

class ViewDiceeViewController: UIViewController {
    
    @IBOutlet weak var inputTextF: UITextField!
    
    var idiceIndex1 : Int = 0
    var idiceIndex2 : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5","dice6",]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func rollDice(){
        idiceIndex1 = Int(arc4random_uniform(6))
        idiceIndex2 = Int(arc4random_uniform(6))
        
        print("id1=\(idiceIndex1)")
        
        diceImageView1.image = UIImage(named: diceArray[idiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[idiceIndex2])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        print("unwind segue!")
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "theSegue"{
            let destinationCV = segue.destination as! ViewController
            destinationCV.from1stText = inputTextF.text
        }
    }
}
