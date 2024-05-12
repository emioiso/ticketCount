//
//  ChargeViewController.swift
//  ticketCount
//
//  Created by emi oiso on 2024/05/08.
//

import UIKit

class ChargeViewController: UIViewController {
    //パスワードを間違えた際に間違えてると出力する為のlabel
    @IBOutlet weak var mistakePassword: UILabel!
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
        // 文字列が "amidayuiiyudana"と一致するか確認
        if textField.text == "amidayuiiyudana" {
            //一致した場合にコンソールに出力
            print("成功")
            //一致した場合、"パスワードが間違っています"の出力を消す。
            mistakePassword.text = ""
        } else {
            // テキストフィールドの文字列を消去する
            textField.text = ""
            mistakePassword.text = String("パスワードが間違っています")
            print("不一致")
        }
    }
    
}
