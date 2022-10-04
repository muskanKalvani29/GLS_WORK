//
//  ViewController.swift
//  coreDataExample
//
//  Created by exam on 03/10/22.
//  Copyright © 2022 exam. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource {

    var appDel:AppDelegate! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDel = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        
        
        let fetchReq = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do {
            try appDel.stuArr = context.fetch(fetchReq)
            print(appDel.stuArr[5].value(forKey: "name")!)
            print(appDel.stuArr[5].value(forKey: "rollNo")!)
            print(appDel.stuArr.count)
        } catch let err as NSError {
            print(err)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appDel.stuArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! myCell
        print(indexPath)
        cell.stuName.text=appDel.stuArr[indexPath.row].value(forKey: "name") as! String
        cell.stuRollNo.text=appDel.stuArr[indexPath.row].value(forKey: "rollNo") as! String
        return cell
    }
    
    @IBAction func actionSubmit(_ sender: Any)
    {
        performSegue(withIdentifier: "gotoNext", sender:
            self)
    }
    
}

