//
//  ViewController.swift
//  Core Data Fundamental
//
//  Created by ammar falmban on 5/24/17.
//  Copyright © 2017 ammar falmban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        insertData()
        fetchData()
    }
    
    func insertData()
    {
        let user = User(context: context)
        
        user.name = "Ammar"
        user.age = 30
        
        appDelegate.saveContext()
        
        /*user.name = "Abdulhalem"
        user.age = 66 */
        
        appDelegate.saveContext()
        
    }

    func fetchData()
    {
        do {
            data = try context.fetch(User.fetchRequest())
            
            for each in data {
                print("Name: \(each.name!)\nAge\(each.age)")
            }
            
        }catch {
            // handle error
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

