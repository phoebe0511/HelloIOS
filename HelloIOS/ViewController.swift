//
//  ViewController.swift
//  HelloIOS
//
//  Created by Hsiu Ping Lin on 2018/2/23.
//  Copyright © 2018年 Hsiu Ping Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var from1stText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        if let text = from1stText{
            outputLabel.text = text
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func showMessageDialog(sender: UIButton){
        let alertDlg = UIAlertController(title: "test title", message: "test message", preferredStyle: UIAlertControllerStyle.alert)
        alertDlg.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler:nil))
        present(alertDlg, animated:true, completion: showlabel)
    }
    
    let showlabel : () -> Void = {
        let icon = "start"
        var iconDic = ["start":"🤩", "彩帶":"🎊", "candy":"🍭"]
        let view = UIView(frame: CGRect(x:0, y:50, width:220, height: 220))
        let iconLabel = UILabel(frame: CGRect(x:30, y:60, width:200, height:200))
        if let icontext = iconDic[icon]{
            iconLabel.text = icon + icontext
        }
        iconLabel.font = UIFont.systemFont(ofSize:100.0)
        view.addSubview(iconLabel)
    }
}

