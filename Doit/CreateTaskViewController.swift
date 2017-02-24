//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Christopher Cennon on 2017-02-23.
//  Copyright © 2017 Christopher Cennon. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet var taskNameTextField: UITextField!
    @IBOutlet var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    @IBAction func buttonClicked(_ sender: Any) {
        // Create a Task from the outlet information
        let task = Task()
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        
        // Add task to array in previous View Controller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
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

}
