//
//  ChargeViewController.swift
//  ticketCount
//
//  Created by emi oiso on 2024/05/08.
//

import UIKit

class ChargeViewController: UIViewController {

    @IBOutlet weak var chargeLabel: UILabel!
    //textFieldの
    @IBOutlet weak var textField: UITextField!
    // チャージ額（または他の値）を保持する変数
    var currentCharge: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // パスワード入力を黒丸で表示
        textField.isSecureTextEntry = true
                
        // デフォルト値でラベルを初期化
        chargeLabel.text = "\(currentCharge)"
    }
    
    @IBAction func btnAction(sender: UIButton){
        print(sender.tag)
    }
    
}
