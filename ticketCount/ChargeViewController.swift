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
            /*
            * chargeLabelに+10する。
            * UILabelのインスタンスであり、そのテキストプロパティは文字列型です。整数値を加算したい場合は、
            * まずcurrentCharge 変数に加算を行い、その結果を chargeLabel.text に文字列として設定する必要があります。
            */
            currentCharge += 10
            chargeLabel.text = "\(currentCharge)"
            UserDefaults.standard.set(currentCharge, forKey: "currentCharge")
            print("Current Charge Saved: \(currentCharge)") // 追加
            // テキストフィールドの文字列を消去する
            textField.text = ""
            
            
        } else {
            // テキストフィールドの文字列を消去する
            textField.text = ""
            mistakePassword.text = String("パスワードが間違っています")
            print("不一致")
        }
    }
    @IBAction func useTicketButtonTapped(_ sender: UIButton) {
            // UseViewControllerに遷移するためのSegueを実行
            performSegue(withIdentifier: "showUseViewController", sender: self)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showUseViewController" {
                if segue.destination is UseViewController {
                    // 必要に応じてデータを渡す
                }
            }
        }
    
}
