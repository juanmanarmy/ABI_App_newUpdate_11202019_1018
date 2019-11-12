//
//  ABI_form_formconsent_vc.swift
//  ABI_App
//
//  Created by Macky on 12/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit

class ABI_form_formconsent_vc: UIViewController {
    
    @IBOutlet var fc_date_tf: UITextField!
    @IBOutlet var fc_gender_tf: UITextField!
    @IBOutlet var fc_age_tf: UITextField!
    @IBOutlet var fc_patientName_tf: UITextField!
    @IBOutlet var fc_weight_tf: UITextField!
    @IBOutlet var fc_province_tf: UITextField!
    @IBOutlet var fc_hospital_tf: UITextField!
    @IBOutlet var fc_mdName_tf: UITextField!
    @IBOutlet var fc_patientInfo_view: UIView!
    @IBOutlet var fc_mobility_view: UIView!
    @IBOutlet var fc_interpretABI_view: UIView!
    @IBOutlet var fc_armPressure_tf: UITextField!
    @IBOutlet var fc_ptaPressure_tf: UITextField!
    @IBOutlet var fc_dpaPressure_tf: UITextField!
    @IBOutlet var fc_abiLeft_tf: UITextField!
    @IBOutlet var fc_mmhg1_tf: UITextField!
    @IBOutlet var fc_mmhg2_tf: UITextField!
    @IBOutlet var fc_mmhg3_tf: UITextField!
    @IBOutlet var fc_abiRight_tf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fc_date_tf.layer.cornerRadius = 13
        fc_gender_tf.layer.cornerRadius = 13
        fc_age_tf.layer.cornerRadius = 13
        fc_patientName_tf.layer.cornerRadius = 13
        fc_weight_tf.layer.cornerRadius = 13
        fc_province_tf.layer.cornerRadius = 13
        fc_hospital_tf.layer.cornerRadius = 13
        fc_mdName_tf.layer.cornerRadius = 13
        fc_patientInfo_view.layer.cornerRadius = 13
        fc_mobility_view.layer.cornerRadius = 13
        fc_interpretABI_view.layer.cornerRadius = 13
        fc_armPressure_tf.layer.cornerRadius = 13
        fc_ptaPressure_tf.layer.cornerRadius = 13
        fc_dpaPressure_tf.layer.cornerRadius = 13
        fc_abiLeft_tf.layer.cornerRadius = 13
        fc_mmhg1_tf.layer.cornerRadius = 13
        fc_mmhg2_tf.layer.cornerRadius = 13
        fc_mmhg3_tf.layer.cornerRadius = 13
        fc_abiRight_tf.layer.cornerRadius = 13
        
        
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
