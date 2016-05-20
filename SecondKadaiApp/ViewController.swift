//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Hilarion on 2016/05/19.
//  Copyright © 2016年 hidenori.nagasawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 名前入力フィールド
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // 前後のスペース、タブは削除する
        let editedName = inputField.text!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        // 名前が入力されたか判定する。入力されてない場合アラートを表示する
        if editedName.isEmpty {
            let alertController = UIAlertController(title: "名前の入力", message: "名前の入力は必須です", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            
            presentViewController(alertController, animated: true, completion: nil)
            
        }
        
        // 遷移先のGreetingViewControllerを取得する
        let greetingViewController: GreetingViewController = segue.destinationViewController as! GreetingViewController
        
        // 入力された名前を遷移先に渡す
        greetingViewController.name = editedName
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }


}

