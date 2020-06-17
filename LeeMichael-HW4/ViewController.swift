//
//  Filename: ViewController.swift
//  Project: LeeMichael-HW4
//  EID: ml45898
//  Course: CS371L
//
//  Created by Michael Lee on 6/16/20.
//  Copyright © 2020 Michael Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataSource: [String] = ["Add", "Subtract", "Multiply", "Divide"]
    let operatorSymbols: [String] = ["+", "-", "*", "/"]
    let calculatorCellIdentifier: String = "CalculatorCellIdentifier"
    let calculatorSegueIdentifier: String = "CalculatorSegueIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row: Int = indexPath.row
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: calculatorCellIdentifier, for: indexPath as IndexPath)
        cell.textLabel?.text = dataSource[row]
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // If we are changing text, we want to pass the default
        // value of the input text field
        if segue.identifier == calculatorSegueIdentifier,
            let targetViewController = segue.destination as? CalculatorViewController,
            let operatorIndex = tableView.indexPathForSelectedRow?.row {
            targetViewController.currentOperator = operatorSymbols[operatorIndex]
        }
    }
}

