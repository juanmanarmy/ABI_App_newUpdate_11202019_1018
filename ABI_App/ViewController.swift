//
//  ViewController.swift
//  ABI_App
//
//  Created by Macky on 11/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import UIKit
import iOSDropDown
import RealmSwift
import ModernSearchBar

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate, ModernSearchBarDelegate{
    
    var vc_test_obj: Results<test_realm>!

    @IBOutlet var summary_button: UIButton!
    @IBOutlet var addNewPatient_button: UIButton!
    @IBOutlet var PatientTableView: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var ModernSearchBar: ModernSearchBar!
    
    //connection in RealmProcess
    let realm = RealmProcess.shared.realm
    
    var suggestionList = Array<String>()
    
    
    
    @IBAction func addNewPatientButton(_ sender: Any) {
        
    }
    
    @IBAction func summaryButton(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        //connection for table view
        self.PatientTableView.register(UINib(nibName: "Abi_ContentFormsViewCell", bundle: nil), forCellReuseIdentifier: "PatientCell")
        
        // Do any additional setup after loading the view.
        self.ModernSearchBar.delegateModernSearchBar = self
        
        
        //customize  the button
        addNewPatient_button.layer.cornerRadius = 8
        addNewPatient_button.layer.borderWidth = 1
        addNewPatient_button.layer.borderColor = UIColor.gray.cgColor
        
        summary_button.layer.cornerRadius = 15
        summary_button.layer.borderWidth = 1
        summary_button.layer.borderColor = UIColor.gray.cgColor
        
        self.PatientTableView.reloadData()
        
    }
    
    ///Called if you use String suggestion list
    func onClickItemSuggestionsView(item: String) {
        print("User touched this item: "+item)
    }
    
    //table cell count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vc_test_obj = realm.objects(test_realm.self)
        return  vc_test_obj.count
    }
    
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    
    
    //table cell content
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PatientCell", for: indexPath) as! Abi_ContentFormsViewCell
     
        let member = vc_test_obj[indexPath.row]
        
        
        
        
        // 1 - With an Array<String>
        
        suggestionList.append(member.PatientName)
        
        self.ModernSearchBar.setDatas(datas: suggestionList)
        
    
        //table view cell to show
        cell.PatientName_tf.text = member.PatientName;
        cell.Hospital_tf.text = member.Hospital;
        cell.Date_tf.text = member.Date;
        
        //add border and color
//        cell.cellView_view.backgroundColor = UIColor.clear
        cell.cellView_view.layer.borderColor = UIColor.gray.cgColor
        cell.cellView_view.layer.borderWidth = 1
        cell.cellView_view.layer.cornerRadius = 8
        cell.cellView_view.clipsToBounds = true
        return cell
    }

}

