//
//  ABI_login_vc.swift
//  ABI_App
//
//  Created by Macky on 11/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit

class ABI_login_vc: UIViewController {

    @IBOutlet var login_username_tf: UITextField!
    @IBOutlet var login_password_tf: UITextField!
    @IBOutlet var login_button: UIButton!
    
    
    
    @IBAction func login_button(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        login_username_tf.layer.cornerRadius = 8
        login_username_tf.layer.borderWidth = 1
        login_username_tf.layer.borderColor = UIColor.gray.cgColor
        
        login_password_tf.layer.cornerRadius = 8
        login_password_tf.layer.borderWidth = 1
        login_password_tf.layer.borderColor = UIColor.gray.cgColor
        
        login_button.layer.cornerRadius = 15
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
