//
//  ViewController.swift
//  Doit
//
//  Created by Christopher Cennon on 2017-02-23.
//  Copyright © 2017 Christopher Cennon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell 
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Clean the windows"
        task2.important = false
        
        let task3 = Task()
        task3.name = "Mow the lawn"
        task3.important = true
        
        return [task1, task2, task3]
        
        
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

