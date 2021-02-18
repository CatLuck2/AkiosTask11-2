//
//  TableViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var cancelButton: UIBarButtonItem!
    private let cellIdentifier: String = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Prefecture.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        cell.textLabel?.text = Prefecture.names[indexPath.row]
        return cell
    }

}
