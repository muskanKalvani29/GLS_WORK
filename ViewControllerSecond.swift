//
//  ViewControllerSecond.swift
//  coreDataExample
//
//  Created by exam on 03/10/22.
//  Copyright © 2022 exam. All rights reserved.
//

import UIKit
import CoreData

class ViewControllerSecond: UIViewController {

    @IBOutlet weak var stuRollNo: UITextField!
    @IBOutlet weak var stuName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func actionSave(_ sender: Any)
    {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Student", in: context)
        let studentObj = NSManagedObject(entity: entity!, insertInto: context)
        studentObj.setValue(stuName.text, forKey: "name")
        studentObj.setValue(stuRollNo.text, forKey: "rollNo")
        
        do {
            try context.save()
        } catch let err as NSError {
            print(err)
        }
    }

    @IBAction func actionShow(_ sender: Any)
    {
        performSegue(withIdentifier: "gotoBack", sender: self)
    }
}
