//
//  UseViewController.swift
//  ticketCount
//
//  Created by emi oiso on 2024/05/12.
//

import UIKit

class UseViewController: UIViewController {
    
    @IBOutlet weak var useLabel: UILabel!
    var minus = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UserDefaultsから現在のチャージを取得して表示
        if let currentCharge = UserDefaults.standard.value(forKey: "currentCharge") as? Int {
            useLabel.text = "\(currentCharge)"
        } else {
            useLabel.text = "データなし"
            print("No data found") // 追加
        }
    }
    
    
    @IBAction func checkButton(_ sender: UIButton) {
        //ボタンが動くかチェック
        //動いた
        print(sender.tag)
        // minusフラグをtrueに設定
        minus = true
        
        // UserDefaultsから現在のチャージを取得して、1を引いた値を設定
        if let currentCharge = UserDefaults.standard.value(forKey: "currentCharge") as? Int {
            let newCharge = currentCharge - 1
            useLabel.text = "\(newCharge)"
            // 新しいチャージをUserDefaultsに保存
            UserDefaults.standard.set(newCharge, forKey: "currentCharge")
        }
    }
}
