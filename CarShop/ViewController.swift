//
//  ViewController.swift
//  CarShop
//
//  Created by Meri Akiashvili on 03.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextFiled: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var clearEmailButton: UIButton!
    @IBOutlet weak var clearPasswordButton: UIButton!
    
    let password = "a" //"WeLoveiOS"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        enterButton.layer.cornerRadius = 7
        passwordTextField.isSecureTextEntry = true
    }
    

    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func displayalert(title : String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func enterButton(_ sender: UIButton) {
        let userEmail = emailTextFiled.text
        let userPassword = passwordTextField.text
        
        if userEmail == "" || userPassword == ""{
            self.displayalert(title: "ყურადღება", message: "ველების შევსება სავალდებულოა")
        } else if isValidEmail(userEmail!) && userPassword == password{
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CarListVC") as? CarListVC
            self.navigationController?.pushViewController(vc!, animated: true)
        }else{
            self.displayalert(title: "შეცდომა", message: "გთხოვთ, მიუთითე სწორი მონაცემები")
        }
    }
            
           
    
    @IBAction func clearEmailButton(_ sender: UIButton) {
        emailTextFiled.text = ""
    }
    
    
    @IBAction func clearPasswordButton(_ sender: UIButton) {
        passwordTextField.text = ""
    }
    
}

