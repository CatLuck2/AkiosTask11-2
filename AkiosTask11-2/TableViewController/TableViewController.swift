//
//  TableViewController.swift
//  AkiosTask11-2
//
//  Created by Nekokichi on 2021/02/18.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet private weak var cancelButton: UIBarButtonItem!
    private let cellIdentifier: String = "cell"
    private let navigationTitle: String = "都道府県を選択"

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let _ = self.navigationController else {
            return
        }
        self.navigationItem.title = navigationTitle
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Prefecture.names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        cell.textLabel?.text = Prefecture.names[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let navVC = self.navigationController,
              let displayVC = navVC.viewControllers[navVC.viewControllers.count - 2] as? DisplayViewController else {
            return
        }
        displayVC.setValueToPrefectureNameLabel(text: Prefecture.names[indexPath.row])
        self.navigationController?.popViewController(animated: true)
    }

}
