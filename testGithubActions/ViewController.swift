//
//  ViewController.swift
//  testGithubActions
//
//  Created by Muhammad Adam on 1/6/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
    }

}


extension ViewController: UITableViewDelegate{
    // FIXME: call it
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell: \(indexPath.row) is selected")
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "simpleTableViewCell") ?? UITableViewCell()
        
        cell.textLabel?.text = "Hello \(indexPath.row)"
        
        return cell
    }
}

