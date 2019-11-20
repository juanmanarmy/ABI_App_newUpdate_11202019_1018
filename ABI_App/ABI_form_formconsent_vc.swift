//
//  ABI_form_formconsent_vc.swift
//  ABI_App
//
//  Created by Macky on 12/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit
import iOSDropDown
import RealmSwift
import DLRadioButton

class ABI_form_formconsent_vc: UIViewController {
    
    var vc_test_obj: Results<test_realm>!
    
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
    @IBOutlet var fc_summary_button: UIButton!
    @IBOutlet var fc_print_button: UIButton!
    @IBOutlet var fc_submit_button: UIButton!
    @IBOutlet var fc_abiWhy_tf: UITextField!
    @IBOutlet var fc_assessed_tf: UITextField!
    @IBOutlet var fc_genderDropDown_tf: DropDown!
    
    
    @IBOutlet var legPainCheckBox: DLRadioButton!
    
    
    
    
    //connection in RealmProcess
    let realm = RealmProcess.shared.realm
    
    @IBAction func fc_submit_button(_ sender: Any) {
        
        save_data()
    }
    
    func save_data() {
        //add new data in realm database
        let patient_uid = UUID().uuidString
        let newData = test_realm(patientID: patient_uid,
                                 PatientName: fc_patientName_tf.text!,
                                 Age: fc_age_tf.text!,
                                 Gender: fc_gender_tf.text!,
                                 Province: fc_province_tf.text!,
                                 Weight: fc_weight_tf.text!,
                                 MdName: fc_mdName_tf.text!,
                                 Hospital: fc_hospital_tf.text!,
                                 Date: fc_date_tf.text!)
        print("Insert successfully")
        
        RealmProcess.shared.write(newData)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // enable multiple selection for water, beer and wine buttons.
        //self.legPainCheckBox.isMultipleSelectionEnabled = true;
     
        // The list of array to display. Can be changed dynamically
        fc_genderDropDown_tf.optionArray = ["Male", "Female"]
        
        
        fc_date_tf.layer.cornerRadius = 8
        fc_date_tf.layer.borderWidth = 1
        fc_date_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_gender_tf.layer.cornerRadius = 8
        fc_gender_tf.layer.borderWidth = 1
        fc_gender_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_age_tf.layer.cornerRadius = 8
        fc_age_tf.layer.borderWidth = 1
        fc_age_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_patientName_tf.layer.cornerRadius = 8
        fc_patientName_tf.layer.borderWidth = 1
        fc_patientName_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_weight_tf.layer.cornerRadius = 8
        fc_weight_tf.layer.borderWidth = 1
        fc_weight_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_province_tf.layer.cornerRadius = 8
        fc_province_tf.layer.borderWidth = 1
        fc_province_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_hospital_tf.layer.cornerRadius = 8
        fc_hospital_tf.layer.borderWidth = 1
        fc_hospital_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_mdName_tf.layer.cornerRadius = 8
        fc_mdName_tf.layer.borderWidth = 1
        fc_mdName_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_patientInfo_view.layer.cornerRadius = 8
        fc_patientInfo_view.layer.borderWidth = 1
        fc_patientInfo_view.layer.borderColor = UIColor.gray.cgColor
        
        fc_mobility_view.layer.cornerRadius = 8
        fc_mobility_view.layer.borderWidth = 1
        fc_mobility_view.layer.borderColor = UIColor.gray.cgColor
        
        fc_interpretABI_view.layer.cornerRadius = 8
        fc_interpretABI_view.layer.borderWidth = 1
        fc_interpretABI_view.layer.borderColor = UIColor.gray.cgColor
        
        fc_armPressure_tf.layer.cornerRadius = 8
        fc_armPressure_tf.layer.borderWidth = 1
        fc_armPressure_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_ptaPressure_tf.layer.cornerRadius = 8
        fc_ptaPressure_tf.layer.borderWidth = 1
        fc_ptaPressure_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_dpaPressure_tf.layer.cornerRadius = 8
        fc_dpaPressure_tf.layer.borderWidth = 1
        fc_dpaPressure_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_abiLeft_tf.layer.cornerRadius = 8
        fc_abiLeft_tf.layer.borderWidth = 1
        fc_abiLeft_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_mmhg1_tf.layer.cornerRadius = 8
        fc_mmhg1_tf.layer.borderWidth = 1
        fc_mmhg1_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_mmhg2_tf.layer.cornerRadius = 8
        fc_mmhg2_tf.layer.borderWidth = 1
        fc_mmhg2_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_mmhg3_tf.layer.cornerRadius = 8
        fc_mmhg3_tf.layer.borderWidth = 1
        fc_mmhg3_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_abiRight_tf.layer.cornerRadius = 8
        fc_abiRight_tf.layer.borderWidth = 1
        fc_abiRight_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_abiWhy_tf.layer.cornerRadius = 8
        fc_abiWhy_tf.layer.borderWidth = 1
        fc_abiWhy_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_assessed_tf.layer.cornerRadius = 8
        fc_assessed_tf.layer.borderWidth = 1
        fc_assessed_tf.layer.borderColor = UIColor.gray.cgColor
        
        fc_summary_button.layer.cornerRadius = 13
        fc_print_button.layer.cornerRadius = 13
        fc_submit_button.layer.cornerRadius = 13
        
        
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
