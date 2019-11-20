//
//  RealmProcess.swift
//  ABI_App
//
//  Created by Macky on 18/11/2019.
//  Copyright © 2019 juan. All rights reserved.
//

import Foundation
import RealmSwift

class RealmProcess {
    
    private init() {}
    static let shared = RealmProcess()
    
    var realm = try! Realm()
    
    func write<T: Object>(_ object:T) {
        
        do {
            
            try realm.write {
                realm.add(object)
                print("New Member was Successfully Added")
                
            }
            
            
        } catch {
            
            post(error)
            
        }
        
    }
    
    func update<T: Object>(_ object: T, with dictionary:[String: Any?]) {
        do {
            
            try realm.write {
                
                for (key, value) in dictionary {
                    
                    object.setValue(value, forKey: key)
                }
                
            }
            
            
        }catch {
            
            post(error)
            
            
        }
        
    }
    
    
    func delete<T: Object>(_ object: T) {
        
        do {
            
            try realm.write {
                
                realm.delete(object)
                
            }
            
        } catch {
            
            
            post(error)
        }
        
    }
    
    
    func post(_ error: Error){
        
        NotificationCenter.default.post(name: NSNotification.Name("RealmError"), object: error)
        
    }
    
    func observeRealmErrors(in vc:UIViewController, completion: @escaping(Error?) -> Void) {
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name("RealmError"), object: nil, queue: nil) { (notification) in
            completion(notification.object as? Error)
            
        }
        
    }
    
    func stopObservingErrors(in vc: UIViewController) {
        
        
        NotificationCenter.default.removeObserver(vc, name: NSNotification.Name("RealmError"), object: nil)
    }
    
    
    
    
    
    
    
}
