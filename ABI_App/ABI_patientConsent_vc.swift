//
//  ABI_patientConsent_vc.swift
//  ABI_App
//
//  Created by Macky on 12/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit



class ABI_patientConsent_vc: UIViewController {

    
    
    @IBOutlet var pc_nameOfPatient_tf: UITextField!
    @IBOutlet var pc_date_tf: UITextField!
    @IBOutlet var pc_signature_view: UIView!
    @IBOutlet var pc_enter_button: UIButton!
    @IBOutlet var pc_clearSign_button: UIButton!
    @IBOutlet var pc_signPad_view: YPDrawSignatureView!
    @IBOutlet var pc_saveSign_button: UIButton!
    
    @IBAction func pc_enter_button(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pc_nameOfPatient_tf.layer.cornerRadius = 8
        pc_nameOfPatient_tf.layer.borderWidth = 1
        pc_nameOfPatient_tf.layer.borderColor = UIColor.gray.cgColor
        
        pc_date_tf.layer.cornerRadius = 8
        pc_date_tf.layer.borderWidth = 1
        pc_date_tf.layer.borderColor = UIColor.gray.cgColor
        
        pc_signature_view.layer.cornerRadius = 8
        pc_signature_view.layer.borderWidth = 1
        pc_signature_view.layer.borderColor = UIColor.gray.cgColor
        
        pc_clearSign_button.layer.cornerRadius = 15
        pc_enter_button.layer.cornerRadius = 15
        pc_saveSign_button.layer.cornerRadius = 15
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func pc_clearSign(_ sender: Any) {
        pc_signPad_view.clear()
    }
    
    @IBAction func pc_saveSIgn(_ sender: Any) {
        // Getting the Signature Image from self.drawSignatureView using the method getSignature().
        print("working save button")
        if let signatureImage = self.pc_signPad_view.getSignature(scale: 10) {
            
            // Saving signatureImage from the line above to the Photo Roll.
            // The first time you do this, the app asks for access to your pictures.
            UIImageWriteToSavedPhotosAlbum(signatureImage, nil, nil, nil)
            
            print("working get signature")
            // Since the Signature is now saved to the Photo Roll, the View can be cleared anyway.
            self.pc_signPad_view.clear()
        }
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
