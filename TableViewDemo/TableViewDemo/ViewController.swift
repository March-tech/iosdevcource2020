//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Vadim Zhuk on 2/18/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var nor = 3

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nor
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Section\(section)"
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row % 3 {
        case 0:
            return tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell", for: indexPath)
        case 1:
            return tableView.dequeueReusableCell(withIdentifier: "CODETableViewCell", for: indexPath)
        default:
            return tableView.dequeueReusableCell(withIdentifier: "prototypeID", for: indexPath)
        }
    }


    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            nor -= 1
            tableView.deleteRows(at: [indexPath], with: .middle)
        case .insert:
            print("insert")
        default:
            print("else")
        }
    }

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "XIBTableViewCell")
        tableView.register(CODETableViewCell.self, forCellReuseIdentifier: "CODETableViewCell")

        self.tableView.estimatedRowHeight = 80
        self.tableView.rowHeight = UITableView.automaticDimension
    }


}

