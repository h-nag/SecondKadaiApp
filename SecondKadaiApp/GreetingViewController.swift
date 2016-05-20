//
//  GreetingViewController.swift
//  SecondKadaiApp
//
//  Created by Hilarion on 2016/05/19.
//  Copyright © 2016年 hidenori.nagasawa. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    // あいさつ表示部ラベル
    @IBOutlet weak var greetingLabel: UILabel!
    
    // あいさつ表示部の名前
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 前画面で入力された名前を表示する
        greetingLabel.text = "こんにちは、\(name)さん"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
