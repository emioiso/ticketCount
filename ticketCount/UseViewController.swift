//
//  UseViewController.swift
//  ticketCount
//
//  Created by emi oiso on 2024/05/12.
//

import UIKit

class UseViewController: UIViewController {
    @IBOutlet weak var useLabel: UILabel!
    
    var newCharge: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UserDefaultsから現在のチャージを取得して表示
        if let currentCharge = UserDefaults.standard.value(forKey: "currentCharge") as? Int {
            newCharge = currentCharge
            useLabel.text = "\(newCharge)"
        } else {
            useLabel.text = "データなし"
            print("No data found")
        }
    }
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        //ボタンが動くかチェック
        print("Button tapped")
        //UserDefaultsから現在のチャージを取得して、1を引いた値を設定
        if let currentCharge = UserDefaults.standard.value(forKey: "currentCharge") as? Int {
            newCharge = currentCharge - 1
            useLabel.text = "\(newCharge)"
            
            //新しいチャージをUserDefaultsに保存
            UserDefaults.standard.set(newCharge, forKey: "currentCharge")
            }
        }
}
