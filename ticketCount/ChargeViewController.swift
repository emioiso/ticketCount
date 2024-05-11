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
        //ボタンが動くかどうかコンソールで確認
        print(sender.tag)
        // テキストフィールドの内容を取得
        if let text = textField.text {
            // 文字列が "amidayuiiyudana"と一致するか確認
            if text == "amidayuiiyudana" {
                //一致した場合にコンソールに出力
                print("成功")
            }
        }
    }
    
}
