//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by Christopher Cennon on 2017-02-24.
//  Copyright © 2017 Christopher Cennon. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    var previousVC = TasksViewController()
    
    @IBOutlet var taskLabel: UILabel!
    
    
    @IBAction func completeButton(_ sender: Any) {
        
        // Delete item, then reload table, then resend user back
        
        // Add task to array in previous View Controller
        
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
        
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
