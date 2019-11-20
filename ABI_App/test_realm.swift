//
//  test_realm.swift
//  ABI_App
//
//  Created by Macky on 14/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import Foundation
import RealmSwift

class test_realm: Object
{
   
    
    
    @objc dynamic var PatientName: String = ""
    @objc dynamic var Age: String = ""
    @objc dynamic var Gender: String = ""
    @objc dynamic var Province: String = ""
    @objc dynamic var Weight: String = ""
    @objc dynamic var MdName: String = ""
    @objc dynamic var Hospital: String = ""
    @objc dynamic var Date: String = ""
    @objc dynamic var patientID = ""
    
    override static func primaryKey() -> String? {
        return "patientID"
    }
  
    convenience init (patientID: String, PatientName: String, Age: String, Gender: String, Province: String, Weight: String, MdName: String, Hospital: String, Date: String) {
        
        self.init()
        self.patientID = patientID;
        self.PatientName = PatientName;
        self.Age = Age;
        self.Gender = Gender;
        self.Province = Province;
        self.Weight = Weight;
        self.MdName = MdName;
        self.Hospital = Hospital;
        self.Date = Date;
        
    }
    
    
}
