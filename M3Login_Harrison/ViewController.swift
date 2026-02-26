//
//  ViewController.swift
//  M3Login_Harrison
//
//  Created by Mesplay, Harrison W. on 2/3/26.
//

import UIKit

class ViewController: UIViewController {

    //Implicitly unwrapped optionals(IUO) type!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        guard let id = idTextField.text, !id.isEmpty else{
            showAlert(message: "Enter your id!")
            return
        }
        guard let pw = pwTextField.text, !pw.isEmpty else{
            showAlert(message: "Enter your password")
            return
        }
        //id:harrison, pw: 1234
        
        resultLabel.text = (id == "harrison" && pw == "1234") ?
        "Login Success!" : "Login Failed."
    }
    func showAlert(message: String){
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        idTextField.becomeFirstResponder()
    }

}

